.class Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$2;
.super Ljava/lang/Object;
.source "SDKPluginUpdateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onStart()V
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
    .line 71
    iput-object p1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$2;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$2;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    const-string v1, "\u51c6\u5907\u4e0b\u8f7d\u66f4\u65b0..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->access$100(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;Ljava/lang/String;I)V

    .line 75
    return-void
.end method
