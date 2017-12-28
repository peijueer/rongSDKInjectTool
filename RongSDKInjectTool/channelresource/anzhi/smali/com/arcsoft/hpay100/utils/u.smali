.class Lcom/arcsoft/hpay100/utils/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic a:Lcom/arcsoft/hpay100/utils/ad;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/utils/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/u;->a:Lcom/arcsoft/hpay100/utils/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/u;->a:Lcom/arcsoft/hpay100/utils/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/u;->a:Lcom/arcsoft/hpay100/utils/ad;

    invoke-interface {v0}, Lcom/arcsoft/hpay100/utils/ad;->a()V

    :cond_0
    return-void
.end method
