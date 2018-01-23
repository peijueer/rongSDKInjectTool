.class Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$2;
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


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$2;->this$1:Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$2;->this$1:Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;

    # getter for: Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->access$0(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;)Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    move-result-object v0

    const-string v1, "\u8fdb\u5165\u6e38\u620f\u5931\u8d25\uff01\uff01\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 133
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$2;->this$1:Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;

    # getter for: Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->access$0(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;)Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->finish()V

    .line 134
    return-void
.end method
