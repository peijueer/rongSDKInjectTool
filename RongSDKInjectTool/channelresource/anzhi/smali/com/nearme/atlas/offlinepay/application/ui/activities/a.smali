.class final Lcom/nearme/atlas/offlinepay/application/ui/activities/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic da:Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;


# direct methods
.method constructor <init>(Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/atlas/offlinepay/application/ui/activities/a;->da:Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nearme/atlas/offlinepay/application/ui/activities/a;->da:Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->finish()V

    .line 12
    return-void
.end method
