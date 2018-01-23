.class Lcom/anzhi/plugin/loader/PluginManager$2;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginManager;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginManager$2;->a:Lcom/anzhi/plugin/loader/PluginManager;

    iput-object p2, p0, Lcom/anzhi/plugin/loader/PluginManager$2;->b:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$2;->a:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-static {v0}, Lcom/anzhi/plugin/loader/PluginManager;->a(Lcom/anzhi/plugin/loader/PluginManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager$2;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 443
    return-void
.end method
