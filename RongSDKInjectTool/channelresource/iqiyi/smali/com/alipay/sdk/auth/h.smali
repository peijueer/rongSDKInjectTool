.class final Lcom/alipay/sdk/auth/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/auth/h;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance v0, Lcom/alipay/sdk/auth/i;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/auth/i;-><init>(Lcom/alipay/sdk/auth/h;)V

    invoke-virtual {v0}, Lcom/alipay/sdk/auth/i;->start()V

    return-void
.end method
