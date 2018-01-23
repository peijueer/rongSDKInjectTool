.class Lcom/arcsoft/hpay100/HPaySdkActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    iput-object p5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const-string v1, "\u652f\u4ed8\u8fdb\u884c\u4e2d,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$22(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$13;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v5, 0x2

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$30(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method
