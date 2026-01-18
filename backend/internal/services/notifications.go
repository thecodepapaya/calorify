package services

import (
	"context"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/messaging"
	"github.com/calorify/backend/internal/config"
	"github.com/rs/zerolog/log"
	"google.golang.org/api/option"
)

type NotificationService struct {
	client *messaging.Client
}

func NewNotificationService(cfg *config.Config) (*NotificationService, error) {
	ctx := context.Background()
	opt := option.WithCredentialsFile(cfg.FirebaseKeyPath)
	app, err := firebase.NewApp(ctx, nil, opt)
	if err != nil {
		return nil, err
	}

	client, err := app.Messaging(ctx)
	if err != nil {
		return nil, err
	}

	return &NotificationService{
		client: client,
	}, nil
}

func (s *NotificationService) SendPushNotification(ctx context.Context, token, title, body string) error {
	message := &messaging.Message{
		Token: token,
		Notification: &messaging.Notification{
			Title: title,
			Body:  body,
		},
	}

	response, err := s.client.Send(ctx, message)
	if err != nil {
		log.Error().Err(err).Msg("Error sending push notification")
		return err
	}

	log.Info().Str("response", response).Msg("Push notification sent successfully")
	return nil
}

func (s *NotificationService) SendMulticastNotification(ctx context.Context, tokens []string, title, body string) error {
	message := &messaging.MulticastMessage{
		Tokens: tokens,
		Notification: &messaging.Notification{
			Title: title,
			Body:  body,
		},
	}

	br, err := s.client.SendEachForMulticast(ctx, message)
	if err != nil {
		log.Error().Err(err).Msg("Error sending multicast notification")
		return err
	}

	log.Info().
		Int("success", br.SuccessCount).
		Int("failure", br.FailureCount).
		Msg("Multicast notification sent")
	return nil
}
