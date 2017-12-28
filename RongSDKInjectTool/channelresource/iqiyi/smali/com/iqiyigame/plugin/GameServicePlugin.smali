.class public interface abstract Lcom/iqiyigame/plugin/GameServicePlugin;
.super Ljava/lang/Object;
.source "GameServicePlugin.java"


# virtual methods
.method public abstract attach(Landroid/app/Service;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)V
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onRebind(Landroid/content/Intent;)V
.end method

.method public abstract onStart(Landroid/content/Intent;I)V
.end method

.method public abstract onStartCommand(Landroid/content/Intent;II)I
.end method

.method public abstract onTaskRemoved(Landroid/content/Intent;)V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract onUnbind(Landroid/content/Intent;)Z
.end method
