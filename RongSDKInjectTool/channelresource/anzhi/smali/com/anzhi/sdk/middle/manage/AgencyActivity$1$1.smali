.class Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$1;
.super Ljava/lang/Object;
.source "AgencyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$1;->this$1:Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$1;->val$savedInstanceState:Landroid/os/Bundle;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$1;->this$1:Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;

    # getter for: Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->access$0(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;)Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$1;->val$savedInstanceState:Landroid/os/Bundle;

    # invokes: Lcom/anzhi/sdk/middle/manage/AgencyActivity;->invokePluginMethod(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->access$0(Lcom/anzhi/sdk/middle/manage/AgencyActivity;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method
