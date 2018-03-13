.class public final enum Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;
.super Ljava/lang/Enum;
.source "NumberProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/NumberProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressTextVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Invisible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

.field public static final enum Visible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

.field private static final synthetic a:[Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    new-instance v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    const-string v1, "Visible"

    invoke-direct {v0, v1, v2}, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->Visible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    new-instance v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    const-string v1, "Invisible"

    invoke-direct {v0, v1, v3}, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->Invisible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    sget-object v1, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->Visible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->Invisible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->a:[Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    return-object v0
.end method

.method public static values()[Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->a:[Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    invoke-virtual {v0}, [Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    return-object v0
.end method
