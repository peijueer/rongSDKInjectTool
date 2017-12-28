.class public interface abstract Lcom/iqiyigame/single/sdk/GamePayApi;
.super Ljava/lang/Object;
.source "GamePayApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;
    }
.end annotation


# virtual methods
.method public abstract dealMissOrder(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/SDKMissOrderCallback;)V
.end method

.method public abstract exitGame(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/SDKExitCallback;)V
.end method

.method public abstract initSDK(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyigame/single/sdk/SDKInitListener;)V
.end method

.method public abstract payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
.end method

.method public abstract payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
.end method

.method public abstract showBannerAdView(Landroid/app/Activity;)V
.end method

.method public abstract showPopUpAdView(Landroid/app/Activity;)V
.end method

.method public abstract showRecommondAdView(Landroid/app/Activity;)V
.end method

.method public abstract showSliderBar(Landroid/app/Activity;)V
.end method

.method public abstract showVideo(Landroid/app/Activity;)V
.end method
