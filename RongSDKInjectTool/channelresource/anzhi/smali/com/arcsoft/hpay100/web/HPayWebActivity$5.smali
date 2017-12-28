.class Lcom/arcsoft/hpay100/web/HPayWebActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$5;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$5;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    # invokes: Lcom/arcsoft/hpay100/web/HPayWebActivity;->goBack()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->access$3(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    return-void
.end method
