.class Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$5;
.super Ljava/lang/Object;
.source "SDKPluginUpdateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;


# direct methods
.method constructor <init>(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$5;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$5;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    invoke-static {v0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->access$300(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V

    .line 108
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$5;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    invoke-static {v0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->access$000(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u66f4\u65b0\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzhiwan/sdk/core/InnerController;->callSDKPlugin()V

    .line 110
    return-void
.end method
