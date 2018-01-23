.class Lcom/arcsoft/hpay100/config/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/am;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/am;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/al;->a(Landroid/app/Activity;)V

    return-void
.end method
