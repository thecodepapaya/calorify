export const SHUTDOWN_SIGNALS = ['SIGTERM', 'SIGINT'] as const;

export type ShutdownSignal = (typeof SHUTDOWN_SIGNALS)[number];

export interface StoppableTask {
  stop(): void | Promise<void>;
}

export interface ShutdownCoordinatorOptions {
  cronTasks: readonly (StoppableTask | undefined)[];
  closeServer(): void | Promise<void>;
  closeDatabase(): void | Promise<void>;
}

export type ShutdownCoordinator = (signal: ShutdownSignal) => Promise<void>;

async function cleanupServerResources(options: ShutdownCoordinatorOptions): Promise<void> {
  let cleanupFailed = false;
  let firstError: unknown;

  const attempt = async (cleanup: () => void | Promise<void>): Promise<void> => {
    try {
      await cleanup();
    } catch (error) {
      if (!cleanupFailed) firstError = error;
      cleanupFailed = true;
    }
  };

  for (const task of options.cronTasks) {
    if (task) await attempt(() => task.stop());
  }
  await attempt(options.closeServer);
  await attempt(options.closeDatabase);

  if (cleanupFailed) throw firstError;
}

/**
 * Runs startup and, if it fails, closes every resource before rethrowing the
 * original startup error. Cleanup failures are reported separately and never
 * replace the error that prevented startup.
 */
export async function withStartupCleanup(
  startup: () => Promise<void>,
  cleanupOptions: ShutdownCoordinatorOptions,
  onCleanupError: (error: unknown) => void
): Promise<void> {
  try {
    await startup();
  } catch (startupError) {
    try {
      await cleanupServerResources(cleanupOptions);
    } catch (cleanupError) {
      onCleanupError(cleanupError);
    }
    throw startupError;
  }
}

/**
 * Coordinates process cleanup exactly once. Cleanup failures are delayed until
 * every resource has had a chance to close, while preserving the required
 * cron -> HTTP server -> database ordering.
 */
export function createShutdownCoordinator(
  options: ShutdownCoordinatorOptions
): ShutdownCoordinator {
  let shutdownPromise: Promise<void> | undefined;

  return (_signal) => {
    if (shutdownPromise) return shutdownPromise;

    shutdownPromise = cleanupServerResources(options);
    return shutdownPromise;
  };
}

export interface ShutdownSignalSource {
  once(signal: ShutdownSignal, listener: () => void): unknown;
}

/** Registers signal hooks on the supplied source; importing this module has no side effects. */
export function registerShutdownSignals(
  source: ShutdownSignalSource,
  shutdown: ShutdownCoordinator,
  onError: (error: unknown, signal: ShutdownSignal) => void
): void {
  for (const signal of SHUTDOWN_SIGNALS) {
    source.once(signal, () => {
      void shutdown(signal).catch((error) => onError(error, signal));
    });
  }
}
