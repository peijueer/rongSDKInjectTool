.class public interface abstract Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;
.super Ljava/lang/Object;
.source "OnPluginDownloadCallback.java"


# virtual methods
.method public abstract checkPluginDownloadFileValid(Ljava/lang/String;)Z
.end method

.method public abstract getPluginDownloadUrl()Ljava/lang/String;
.end method

.method public abstract onCheckPluginUpdate(ILjava/lang/String;)Z
.end method

.method public abstract onPluginDownloadFailed()V
.end method

.method public abstract onPluginDownloadProgress(J)V
.end method
