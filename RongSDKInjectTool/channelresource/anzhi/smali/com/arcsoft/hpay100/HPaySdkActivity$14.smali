.class Lcom/arcsoft/hpay100/HPaySdkActivity$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private final synthetic val$yzm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$yzm:Ljava/lang/String;

    iput-object p5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    iput-object p6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideDDDialog(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$28(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$yzm:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$14;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showRetainDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$31(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method
