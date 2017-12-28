.class public interface abstract Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;
.super Ljava/lang/Object;
.source "GamePlatformSDKApi.java"


# virtual methods
.method public abstract addLoginListener(Lcom/iqiyi/sdk/listener/LoginListener;)V
.end method

.method public abstract addPaymentListener(Lcom/iqiyi/sdk/listener/PayListener;)V
.end method

.method public abstract createRole(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract enterGame(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract getQIYIInfo()Lorg/json/JSONObject;
.end method

.method public abstract getQIYIInfoAsync(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/QIYIInfoCallBack;)V
.end method

.method public abstract initPlatform(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;)I
.end method

.method public abstract initQQLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initSliderBar(Landroid/app/Activity;)V
.end method

.method public abstract isLogin()Z
.end method

.method public abstract ppsAccountCenter(Landroid/app/Activity;)I
.end method

.method public abstract ppsChangeAccount(Landroid/app/Activity;)I
.end method

.method public abstract ppsLogin(Landroid/app/Activity;)I
.end method

.method public abstract ppsLogout(Landroid/app/Activity;)I
.end method

.method public abstract ppsPayment(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract ppsPayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setMVersion(Ljava/lang/String;)V
.end method
