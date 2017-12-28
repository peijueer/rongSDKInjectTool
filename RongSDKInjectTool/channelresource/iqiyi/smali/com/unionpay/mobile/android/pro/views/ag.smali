.class final Lcom/unionpay/mobile/android/pro/views/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/y;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/y;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/ag;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ag;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/y;->C(Lcom/unionpay/mobile/android/pro/views/y;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ag;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/y;->D(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/widgets/m;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/ag;->a:Lcom/unionpay/mobile/android/pro/views/y;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/ag;->a:Lcom/unionpay/mobile/android/pro/views/y;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/y;->E(Lcom/unionpay/mobile/android/pro/views/y;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/y;->f(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;)V

    return-void
.end method
