.class final Lcom/unionpay/mobile/android/nocard/views/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/unionpay/mobile/android/nocard/views/l;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/m;->b:Lcom/unionpay/mobile/android/nocard/views/l;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/m;->b:Lcom/unionpay/mobile/android/nocard/views/l;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->c(Ljava/lang/String;)V

    return-void
.end method
