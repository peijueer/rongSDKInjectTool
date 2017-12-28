.class Lcom/anzhi/plugin/loader/PluginBaseActivity$5;
.super Ljava/lang/Object;
.source "PluginBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$5;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    iput p2, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$5;->b:I

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$5;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$5;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$5;->b:I

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 298
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 299
    :catch_1
    move-exception v0

    .line 300
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
