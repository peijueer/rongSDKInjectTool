.class Lcom/anzhi/plugin/loader/PluginBaseActivity$3;
.super Ljava/lang/Object;
.source "PluginBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

.field private final synthetic b:Ljava/lang/CharSequence;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    iput-object p2, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;->c:I

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    invoke-virtual {v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;->b:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    return-void
.end method
