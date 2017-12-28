.class Lcom/anzhi/plugin/framework/PluginActivityProxy$5;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$5;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput-object p2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$5;->b:Landroid/app/Dialog;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$5;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 596
    return-void
.end method
