.class Lcom/anzhi/plugin/loader/PluginBaseActivity$9;
.super Ljava/lang/Object;
.source "PluginBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

.field private final synthetic b:Landroid/widget/BaseAdapter;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Landroid/widget/BaseAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$9;->a:Lcom/anzhi/plugin/loader/PluginBaseActivity;

    iput-object p2, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$9;->b:Landroid/widget/BaseAdapter;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity$9;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 440
    return-void
.end method
