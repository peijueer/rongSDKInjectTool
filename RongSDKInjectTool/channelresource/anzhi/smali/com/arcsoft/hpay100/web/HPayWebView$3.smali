.class Lcom/arcsoft/hpay100/web/HPayWebView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebView;

.field private final synthetic val$loadJsUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebView$3;->this$0:Lcom/arcsoft/hpay100/web/HPayWebView;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/HPayWebView$3;->val$loadJsUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView$3;->this$0:Lcom/arcsoft/hpay100/web/HPayWebView;

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebView$3;->val$loadJsUrl:Ljava/lang/String;

    # invokes: Lcom/arcsoft/hpay100/web/HPayWebView;->loadjsurl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->access$6(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V

    return-void
.end method
