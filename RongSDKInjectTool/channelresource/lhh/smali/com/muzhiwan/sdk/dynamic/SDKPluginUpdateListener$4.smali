.class Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$4;
.super Ljava/lang/Object;
.source "SDKPluginUpdateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onError()V
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
    .line 94
    iput-object p1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$4;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$4;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    invoke-static {v0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->access$200(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V

    .line 98
    return-void
.end method
