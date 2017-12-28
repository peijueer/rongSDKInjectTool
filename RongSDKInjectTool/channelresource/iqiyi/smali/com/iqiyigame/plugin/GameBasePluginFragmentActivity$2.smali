.class Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$2;
.super Ljava/lang/Object;
.source "GameBasePluginFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$2;->this$0:Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

    iput-object p2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$2;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 336
    return-void
.end method
