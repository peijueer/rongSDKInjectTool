.class Lcom/zqhy/sdk/ui/HomeWebActivity$3;
.super Ljava/lang/Object;
.source "HomeWebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/HomeWebActivity;->checkNetWorkConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/HomeWebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$3;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$3;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/utils/h;->a(Landroid/content/Context;)V

    .line 312
    return-void
.end method
