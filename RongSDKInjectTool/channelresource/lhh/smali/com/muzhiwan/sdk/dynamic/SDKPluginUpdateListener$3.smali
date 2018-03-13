.class Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;
.super Ljava/lang/Object;
.source "SDKPluginUpdateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

.field final synthetic val$precent:I

.field final synthetic val$progressText:Ljava/lang/String;

.field final synthetic val$sizeText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    iput-object p2, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->val$progressText:Ljava/lang/String;

    iput-object p3, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->val$sizeText:Ljava/lang/String;

    iput p4, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->val$precent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u8fdb\u5ea6("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->val$progressText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->val$sizeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;->val$precent:I

    invoke-static {v0, v1, v2}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->access$100(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;Ljava/lang/String;I)V

    .line 88
    return-void
.end method
