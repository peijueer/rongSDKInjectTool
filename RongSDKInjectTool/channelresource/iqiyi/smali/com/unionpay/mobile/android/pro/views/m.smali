.class final Lcom/unionpay/mobile/android/pro/views/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/unionpay/mobile/android/pro/views/k;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/k;Z)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/pro/views/m;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->A(Lcom/unionpay/mobile/android/pro/views/k;)V

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->k()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->B(Lcom/unionpay/mobile/android/pro/views/k;)Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->C(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->D(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->E(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/widgets/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ay;->b()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->E(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/widgets/ay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/ay;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->c()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/m;->b:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/k;->F(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Landroid/nfc/NfcAdapter;)V

    goto :goto_0
.end method
