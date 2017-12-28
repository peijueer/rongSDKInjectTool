.class Lcom/anzhi/sdk/middle/manage/PushService$1;
.super Landroid/os/Handler;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anzhi/sdk/middle/manage/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/PushService;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/PushService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/PushService$1;->this$0:Lcom/anzhi/sdk/middle/manage/PushService;

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/PushService$1;->this$0:Lcom/anzhi/sdk/middle/manage/PushService;

    # getter for: Lcom/anzhi/sdk/middle/manage/PushService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/PushService;->access$0(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/PushService$1;->this$0:Lcom/anzhi/sdk/middle/manage/PushService;

    # getter for: Lcom/anzhi/sdk/middle/manage/PushService;->mPendIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/PushService;->access$1(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/PushService$1;->this$0:Lcom/anzhi/sdk/middle/manage/PushService;

    # getter for: Lcom/anzhi/sdk/middle/manage/PushService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/PushService;->access$0(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/PushService$1;->this$0:Lcom/anzhi/sdk/middle/manage/PushService;

    # getter for: Lcom/anzhi/sdk/middle/manage/PushService;->mPendIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/manage/PushService;->access$1(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 37
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/PushService$1;->this$0:Lcom/anzhi/sdk/middle/manage/PushService;

    # getter for: Lcom/anzhi/sdk/middle/manage/PushService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/PushService;->access$0(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/PushService$1;->this$0:Lcom/anzhi/sdk/middle/manage/PushService;

    # getter for: Lcom/anzhi/sdk/middle/manage/PushService;->mPendIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/PushService;->access$1(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
