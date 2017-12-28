.class Lcom/arcsoft/hpay100/web/HPayJavascript$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

.field private final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$10;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$10;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$10;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$10;->val$data:Ljava/lang/String;

    const-string v3, "\u786e\u5b9a"

    const-string v4, ""

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->showDefaultConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
