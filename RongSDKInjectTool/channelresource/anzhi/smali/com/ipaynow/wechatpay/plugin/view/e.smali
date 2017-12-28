.class final Lcom/ipaynow/wechatpay/plugin/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic cq:Lcom/ipaynow/wechatpay/plugin/view/d;

.field private final synthetic cr:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/view/d;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/e;->cq:Lcom/ipaynow/wechatpay/plugin/view/d;

    iput-object p2, p0, Lcom/ipaynow/wechatpay/plugin/view/e;->cr:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/e;->cr:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/e;->cr:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 26
    :cond_0
    return-void
.end method
