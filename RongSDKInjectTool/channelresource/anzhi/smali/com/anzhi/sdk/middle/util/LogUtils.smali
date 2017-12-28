.class public Lcom/anzhi/sdk/middle/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final ENCRYPT_LOG:Z = false

.field private static final MAX_LOG_LINE_LENGTH:I = 0x800

.field private static sDebuggable:Z

.field private static sLogLock:Ljava/lang/Object;

.field private static sTag:Ljava/lang/String;

.field private static sTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "Anzhi"

    sput-object v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTimestamp:J

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sLogLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-boolean v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v3, :cond_0

    .line 98
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "start":I
    const/4 v0, 0x0

    .line 101
    .local v0, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 103
    .local v1, "len":I
    :goto_0
    move v2, v0

    .line 104
    add-int/lit16 v0, v2, 0x800

    .line 105
    if-lt v0, v1, :cond_1

    .line 106
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 109
    .restart local v0    # "end":I
    .restart local v1    # "len":I
    .restart local v2    # "start":I
    :cond_1
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_2
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-boolean v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v3, :cond_0

    .line 154
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "start":I
    const/4 v0, 0x0

    .line 157
    .local v0, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 159
    .local v1, "len":I
    :goto_0
    move v2, v0

    .line 160
    add-int/lit16 v0, v2, 0x800

    .line 161
    if-lt v0, v1, :cond_1

    .line 162
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 165
    .restart local v0    # "end":I
    .restart local v1    # "len":I
    .restart local v2    # "start":I
    :cond_1
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_2
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 181
    sget-boolean v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    sget-boolean v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_0
    return-void
.end method

.method public static elapsed(Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    .local v0, "currentTime":J
    sget-wide v4, Lcom/anzhi/sdk/middle/util/LogUtils;->sTimestamp:J

    sub-long v2, v0, v4

    .line 196
    .local v2, "elapsedTime":J
    sput-wide v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTimestamp:J

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Elapsed|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 223
    if-nez p0, :cond_0

    .line 224
    const-string v2, ""

    .line 229
    :goto_0
    return-object v2

    .line 226
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 227
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 228
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-boolean v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v3, :cond_0

    .line 54
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "start":I
    const/4 v0, 0x0

    .line 57
    .local v0, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 59
    .local v1, "len":I
    :goto_0
    move v2, v0

    .line 60
    add-int/lit16 v0, v2, 0x800

    .line 61
    if-lt v0, v1, :cond_1

    .line 62
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 65
    .restart local v0    # "end":I
    .restart local v1    # "len":I
    .restart local v2    # "start":I
    :cond_1
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_2
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isDebugable()Z
    .locals 1

    .prologue
    .line 201
    sget-boolean v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    return v0
.end method

.method public static markStart(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTimestamp:J

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Started|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/anzhi/sdk/middle/util/LogUtils;->sTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public static setDebugable(Z)V
    .locals 0
    .param p0, "debugable"    # Z

    .prologue
    .line 205
    sput-boolean p0, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    .line 206
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 49
    sput-object p0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-boolean v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v3, :cond_0

    .line 76
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "start":I
    const/4 v0, 0x0

    .line 79
    .local v0, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    .local v1, "len":I
    :goto_0
    move v2, v0

    .line 82
    add-int/lit16 v0, v2, 0x800

    .line 83
    if-lt v0, v1, :cond_1

    .line 84
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 87
    .restart local v0    # "end":I
    .restart local v1    # "len":I
    .restart local v2    # "start":I
    :cond_1
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_2
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static w(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-boolean v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v3, :cond_0

    .line 120
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "start":I
    const/4 v0, 0x0

    .line 123
    .local v0, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 125
    .local v1, "len":I
    :goto_0
    move v2, v0

    .line 126
    add-int/lit16 v0, v2, 0x800

    .line 127
    if-lt v0, v1, :cond_1

    .line 128
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 131
    .restart local v0    # "end":I
    .restart local v1    # "len":I
    .restart local v2    # "start":I
    :cond_1
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_2
    sget-object v3, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    sget-boolean v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 148
    sget-object v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    sget-boolean v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/anzhi/sdk/middle/util/LogUtils;->sTag:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_0
    return-void
.end method
