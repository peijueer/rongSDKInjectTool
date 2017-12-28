.class Lcom/anzhi/plugin/loader/PluginBaseActivity$6;
.super Ljava/lang/Object;
.source "PluginBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$6;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    iput-object p2, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$6;->b:Landroid/app/Dialog;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$6;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 362
    return-void
.end method
