.class Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$1;
.super Ljava/lang/Object;
.source "SDKPluginUpdateListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->showErrorDialog()V
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
    .line 55
    iput-object p1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$1;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$1;->this$0:Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    # getter for: Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->access$000(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    return-void
.end method
