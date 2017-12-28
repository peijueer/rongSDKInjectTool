.class Lcom/anzhi/plugin/loader/PluginManager$3$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginManager$3;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginManager$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginManager$3$1;->a:Lcom/anzhi/plugin/loader/PluginManager$3;

    iput-object p2, p0, Lcom/anzhi/plugin/loader/PluginManager$3$1;->b:Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$3$1;->a:Lcom/anzhi/plugin/loader/PluginManager$3;

    invoke-static {v0}, Lcom/anzhi/plugin/loader/PluginManager$3;->a(Lcom/anzhi/plugin/loader/PluginManager$3;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/loader/PluginManager;->a(Lcom/anzhi/plugin/loader/PluginManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager$3$1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 458
    return-void
.end method
