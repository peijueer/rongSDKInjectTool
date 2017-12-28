.class final Lcom/unionpay/mobile/android/pro/views/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/y;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/y;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/y;->o(Lcom/unionpay/mobile/android/pro/views/y;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/y;->p(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/c;->a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)I

    move-result v0

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/y;->n()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/y;->n()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/y;->n()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/y;->q(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/y;->n()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/y;->r(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/y;->s(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ac;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/y;->t(Lcom/unionpay/mobile/android/pro/views/y;)V

    goto :goto_0
.end method
