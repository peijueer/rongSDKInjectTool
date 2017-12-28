.class Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$1;
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
    .line 339
    iput-object p1, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$1;->this$0:Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

    iput-object p2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$1;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$1;->val$act:Landroid/app/Activity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    .line 346
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 352
    return-void
.end method
