.class public final Lcom/rongmzw/frame/sdk/lhh/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/lhh/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ExpandableLayout:[I

.field public static final ExpandableLayout_el_contentLayout:I = 0x1

.field public static final ExpandableLayout_el_duration:I = 0x2

.field public static final ExpandableLayout_el_headerLayout:I = 0x0

.field public static final NumberProgressView:[I

.field public static final NumberProgressView_progress_current:I = 0x0

.field public static final NumberProgressView_progress_max:I = 0x1

.field public static final NumberProgressView_progress_reached_bar_height:I = 0x4

.field public static final NumberProgressView_progress_reached_color:I = 0x3

.field public static final NumberProgressView_progress_text_color:I = 0x7

.field public static final NumberProgressView_progress_text_offset:I = 0x8

.field public static final NumberProgressView_progress_text_size:I = 0x6

.field public static final NumberProgressView_progress_text_visibility:I = 0x9

.field public static final NumberProgressView_progress_unreached_bar_height:I = 0x5

.field public static final NumberProgressView_progress_unreached_color:I = 0x2

.field public static final Themes:[I

.field public static final Themes_numberProgressBarStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rongmzw/frame/sdk/lhh/R$styleable;->ExpandableLayout:[I

    .line 183
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rongmzw/frame/sdk/lhh/R$styleable;->NumberProgressView:[I

    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01000d

    aput v2, v0, v1

    sput-object v0, Lcom/rongmzw/frame/sdk/lhh/R$styleable;->Themes:[I

    return-void

    .line 179
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data

    .line 183
    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
