.class Lcom/arcsoft/hpay100/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/arcsoft/hpay100/utils/b;

.field private final synthetic b:Lcom/arcsoft/hpay100/utils/HPayCustomDialog;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/utils/b;Lcom/arcsoft/hpay100/utils/HPayCustomDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/c;->a:Lcom/arcsoft/hpay100/utils/b;

    iput-object p2, p0, Lcom/arcsoft/hpay100/utils/c;->b:Lcom/arcsoft/hpay100/utils/HPayCustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/c;->a:Lcom/arcsoft/hpay100/utils/b;

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/b;->a(Lcom/arcsoft/hpay100/utils/b;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/utils/c;->b:Lcom/arcsoft/hpay100/utils/HPayCustomDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
