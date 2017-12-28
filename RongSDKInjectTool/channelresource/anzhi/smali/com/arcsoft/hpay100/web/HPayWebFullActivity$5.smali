.class Lcom/arcsoft/hpay100/web/HPayWebFullActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$5;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$5;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # invokes: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->goBack()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$3(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    return-void
.end method
