.class Lcom/anzhi/plugin/loader/PluginBaseActivity$1;
.super Landroid/os/Handler;
.source "PluginBaseActivity.java"


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginBaseActivity;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$1;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$1;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onHandleMessage(Landroid/os/Message;)V

    .line 58
    return-void
.end method
