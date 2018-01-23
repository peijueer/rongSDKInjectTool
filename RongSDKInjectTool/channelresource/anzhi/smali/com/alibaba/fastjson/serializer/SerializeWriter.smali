.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected buf:[C

.field protected count:I

.field private features:I

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 60
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 62
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 64
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 66
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v1, :cond_1

    .line 70
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 72
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "initialSize"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 110
    if-gtz p2, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 114
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 81
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 83
    .local v5, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 85
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 88
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v6, :cond_1

    .line 89
    const/16 v6, 0x400

    new-array v6, v6, [C

    iput-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 92
    :cond_1
    const/4 v2, 0x0

    .line 93
    .local v2, "featuresValue":I
    move-object v0, p2

    .local v0, "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 94
    .local v1, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v6

    or-int/2addr v2, v6

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 97
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 76
    return-void
.end method

.method static final isSpecial(CI)Z
    .locals 4
    .param p0, "ch"    # C
    .param p1, "features"    # I

    .prologue
    const/16 v3, 0x5c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1172
    const/16 v2, 0x20

    if-ne p0, v2, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v0

    .line 1176
    :cond_1
    const/16 v2, 0x2f

    if-ne p0, v2, :cond_2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1177
    goto :goto_0

    .line 1180
    :cond_2
    const/16 v2, 0x23

    if-le p0, v2, :cond_3

    if-ne p0, v3, :cond_0

    .line 1184
    :cond_3
    const/16 v2, 0xd

    if-le p0, v2, :cond_4

    if-eq p0, v3, :cond_4

    const/16 v2, 0x22

    if-ne p0, v2, :cond_0

    :cond_4
    move v0, v1

    .line 1185
    goto :goto_0
.end method

.method private writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
    .locals 28
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "checkSpecial"    # Z

    .prologue
    .line 1055
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    .line 1058
    .local v15, "nameLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v17, v0

    .line 1060
    .local v17, "newcount":I
    if-nez p3, :cond_0

    .line 1061
    const/16 v21, 0x4

    .line 1062
    .local v21, "valueLen":I
    add-int/lit8 v23, v15, 0x8

    add-int v17, v17, v23

    .line 1068
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 1070
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1071
    const/16 v23, 0x3a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 1072
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v23

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 1165
    :goto_1
    return-void

    .line 1064
    .end local v21    # "valueLen":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    .line 1065
    .restart local v21    # "valueLen":I
    add-int v23, v15, v21

    add-int/lit8 v23, v23, 0x6

    add-int v17, v17, v23

    goto :goto_0

    .line 1075
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1078
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    aput-char p1, v23, v24

    .line 1080
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v23, v0

    add-int/lit8 v16, v23, 0x2

    .line 1081
    .local v16, "nameStart":I
    add-int v14, v16, v15

    .line 1083
    .local v14, "nameEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x22

    aput-char v25, v23, v24

    .line 1084
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1086
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x22

    aput-char v24, v23, v14

    .line 1090
    add-int/lit8 v10, v14, 0x1

    .line 1091
    .local v10, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    const/16 v24, 0x3a

    aput-char v24, v23, v10

    .line 1093
    if-nez p3, :cond_3

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    const/16 v24, 0x6e

    aput-char v24, v23, v11

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .restart local v11    # "index":I
    const/16 v24, 0x75

    aput-char v24, v23, v10

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    const/16 v24, 0x6c

    aput-char v24, v23, v11

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .restart local v11    # "index":I
    const/16 v24, 0x6c

    aput-char v24, v23, v10

    goto/16 :goto_1

    .line 1101
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    const/16 v24, 0x22

    aput-char v24, v23, v11

    .line 1103
    move/from16 v22, v10

    .line 1104
    .local v22, "valueStart":I
    add-int v20, v22, v21

    .line 1106
    .local v20, "valueEnd":I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, v21

    move-object/from16 v3, v24

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1108
    if-eqz p4, :cond_8

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 1109
    const/16 v18, 0x0

    .line 1110
    .local v18, "specialCount":I
    const/4 v13, -0x1

    .line 1111
    .local v13, "lastSpecialIndex":I
    const/4 v8, -0x1

    .line 1112
    .local v8, "firstSpecialIndex":I
    const/4 v12, 0x0

    .line 1114
    .local v12, "lastSpecial":C
    move/from16 v9, v22

    .local v9, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v9, v0, :cond_6

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    aget-char v7, v23, v9

    .line 1117
    .local v7, "ch":C
    const/16 v23, 0x5d

    move/from16 v0, v23

    if-lt v7, v0, :cond_5

    .line 1114
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1121
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1122
    add-int/lit8 v18, v18, 0x1

    .line 1123
    move v13, v9

    .line 1124
    move v12, v7

    .line 1126
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_4

    .line 1127
    move v8, v9

    goto :goto_3

    .line 1132
    .end local v7    # "ch":C
    :cond_6
    if-lez v18, :cond_8

    .line 1133
    add-int v17, v17, v18

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    .line 1135
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1137
    :cond_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1139
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v25, v0

    add-int/lit8 v26, v13, 0x2

    sub-int v27, v20, v13

    add-int/lit8 v27, v27, -0x1

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v13

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v24, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v24, v24, v12

    aput-char v24, v23, v13

    .line 1164
    .end local v8    # "firstSpecialIndex":I
    .end local v9    # "i":I
    .end local v12    # "lastSpecial":C
    .end local v13    # "lastSpecialIndex":I
    .end local v18    # "specialCount":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x22

    aput-char v25, v23, v24

    goto/16 :goto_1

    .line 1144
    .restart local v8    # "firstSpecialIndex":I
    .restart local v9    # "i":I
    .restart local v12    # "lastSpecial":C
    .restart local v13    # "lastSpecialIndex":I
    .restart local v18    # "specialCount":I
    :cond_9
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 1145
    sub-int v19, v8, v22

    .line 1146
    .local v19, "textIndex":I
    move v5, v8

    .line 1147
    .local v5, "bufIndex":I
    move/from16 v9, v19

    :goto_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_8

    .line 1148
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1150
    .restart local v7    # "ch":C
    sget-object v23, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_a

    sget-object v23, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v23, v23, v7

    if-nez v23, :cond_b

    :cond_a
    const/16 v23, 0x2f

    move/from16 v0, v23

    if-ne v7, v0, :cond_c

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1153
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .local v6, "bufIndex":I
    const/16 v24, 0x5c

    aput-char v24, v23, v5

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v24, v24, v7

    aput-char v24, v23, v6

    .line 1155
    add-int/lit8 v20, v20, 0x1

    .line 1147
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1157
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    aput-char v7, v23, v5

    move v5, v6

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    goto :goto_5
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1352
    sget-object v7, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    .line 1354
    .local v7, "specicalFlags_doubleQuotes":[Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1355
    .local v4, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v4

    add-int/lit8 v6, v9, 0x1

    .line 1356
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_8

    .line 1357
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_7

    .line 1358
    if-nez v4, :cond_0

    .line 1359
    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1360
    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1361
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1449
    :goto_0
    return-void

    .line 1365
    :cond_0
    const/4 v2, 0x0

    .line 1366
    .local v2, "hasSpecial":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1367
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1368
    .local v0, "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_3

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_3

    .line 1369
    const/4 v2, 0x1

    .line 1374
    .end local v0    # "ch":C
    :cond_1
    if-eqz v2, :cond_2

    .line 1375
    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1377
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    .line 1378
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1379
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_4

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_4

    .line 1380
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1381
    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1377
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1366
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1383
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_3

    .line 1386
    .end local v0    # "ch":C
    :cond_5
    if-eqz v2, :cond_6

    .line 1387
    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1389
    :cond_6
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1392
    .end local v2    # "hasSpecial":Z
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1395
    :cond_8
    if-nez v4, :cond_a

    .line 1396
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v9, 0x3

    .line 1397
    .local v5, "newCount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v5, v9, :cond_9

    .line 1398
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1400
    :cond_9
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x22

    aput-char v11, v9, v10

    .line 1401
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x22

    aput-char v11, v9, v10

    .line 1402
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 1406
    .end local v5    # "newCount":I
    :cond_a
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1407
    .local v8, "start":I
    add-int v1, v8, v4

    .line 1409
    .local v1, "end":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v4, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1410
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1412
    const/4 v2, 0x0

    .line 1414
    .restart local v2    # "hasSpecial":Z
    move v3, v8

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v1, :cond_f

    .line 1415
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v3

    .line 1416
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_c

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_c

    .line 1417
    if-nez v2, :cond_d

    .line 1418
    add-int/lit8 v6, v6, 0x3

    .line 1419
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_b

    .line 1420
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1422
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1424
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x3

    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1425
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1426
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x22

    aput-char v10, v9, v8

    .line 1427
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1428
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 1429
    add-int/lit8 v1, v1, 0x2

    .line 1430
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x22

    aput-char v11, v9, v10

    .line 1432
    const/4 v2, 0x1

    .line 1414
    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1434
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 1435
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_e

    .line 1436
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1438
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1440
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x2

    sub-int v13, v1, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1441
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1442
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 1443
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1448
    .end local v0    # "ch":C
    :cond_f
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1452
    sget-object v7, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    .line 1454
    .local v7, "specicalFlags_singleQuotes":[Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1455
    .local v4, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v4

    add-int/lit8 v6, v9, 0x1

    .line 1456
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_8

    .line 1457
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_7

    .line 1458
    if-nez v4, :cond_0

    .line 1459
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1460
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1461
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1550
    :goto_0
    return-void

    .line 1465
    :cond_0
    const/4 v2, 0x0

    .line 1466
    .local v2, "hasSpecial":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1467
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1468
    .local v0, "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_3

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_3

    .line 1469
    const/4 v2, 0x1

    .line 1474
    .end local v0    # "ch":C
    :cond_1
    if-eqz v2, :cond_2

    .line 1475
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1477
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    .line 1478
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1479
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_4

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_4

    .line 1480
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1481
    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1477
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1466
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1483
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_3

    .line 1486
    .end local v0    # "ch":C
    :cond_5
    if-eqz v2, :cond_6

    .line 1487
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1489
    :cond_6
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1493
    .end local v2    # "hasSpecial":Z
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1496
    :cond_8
    if-nez v4, :cond_a

    .line 1497
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v9, 0x3

    .line 1498
    .local v5, "newCount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v5, v9, :cond_9

    .line 1499
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1501
    :cond_9
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1502
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1503
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 1507
    .end local v5    # "newCount":I
    :cond_a
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1508
    .local v8, "start":I
    add-int v1, v8, v4

    .line 1510
    .local v1, "end":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v4, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1511
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1513
    const/4 v2, 0x0

    .line 1515
    .restart local v2    # "hasSpecial":Z
    move v3, v8

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v1, :cond_f

    .line 1516
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v3

    .line 1517
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_c

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_c

    .line 1518
    if-nez v2, :cond_d

    .line 1519
    add-int/lit8 v6, v6, 0x3

    .line 1520
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_b

    .line 1521
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1523
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1525
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x3

    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1526
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1527
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x27

    aput-char v10, v9, v8

    .line 1528
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1529
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 1530
    add-int/lit8 v1, v1, 0x2

    .line 1531
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1533
    const/4 v2, 0x1

    .line 1515
    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1535
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 1536
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_e

    .line 1537
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1539
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1541
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x2

    sub-int v13, v1, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1542
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1543
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 1544
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1549
    .end local v0    # "ch":C
    :cond_f
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v6, -0x1

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 531
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 532
    return-void
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .locals 20
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C
    .param p3, "checkSpecial"    # Z

    .prologue
    .line 539
    if-nez p1, :cond_1

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 541
    if-eqz p2, :cond_0

    .line 542
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 548
    .local v10, "len":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v15, v10

    add-int/lit8 v11, v15, 0x2

    .line 549
    .local v11, "newcount":I
    if-eqz p2, :cond_2

    .line 550
    add-int/lit8 v11, v11, 0x1

    .line 553
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15

    if-le v11, v15, :cond_c

    .line 554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v15, :cond_b

    .line 555
    const/16 v15, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 557
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_a

    .line 558
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 560
    .local v4, "ch":C
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 561
    const/16 v15, 0x8

    if-eq v4, v15, :cond_3

    const/16 v15, 0xc

    if-eq v4, v15, :cond_3

    const/16 v15, 0xa

    if-eq v4, v15, :cond_3

    const/16 v15, 0xd

    if-eq v4, v15, :cond_3

    const/16 v15, 0x9

    if-eq v4, v15, :cond_3

    const/16 v15, 0x22

    if-eq v4, v15, :cond_3

    const/16 v15, 0x2f

    if-eq v4, v15, :cond_3

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_4

    .line 569
    :cond_3
    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 570
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v15, v15, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 557
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 574
    :cond_4
    const/16 v15, 0x20

    if-ge v4, v15, :cond_5

    .line 575
    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 576
    const/16 v15, 0x75

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 577
    const/16 v15, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 578
    const/16 v15, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 579
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v16, v4, 0x2

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 580
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v16, v4, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_2

    .line 584
    :cond_5
    const/16 v15, 0x7f

    if-lt v4, v15, :cond_9

    .line 585
    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 586
    const/16 v15, 0x75

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 587
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 588
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v16, v4, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 589
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v16, v4, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 590
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    and-int/lit8 v16, v4, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_2

    .line 594
    :cond_6
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v15, v15

    if-ge v4, v15, :cond_7

    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v15, v15, v4

    if-nez v15, :cond_8

    :cond_7
    const/16 v15, 0x2f

    if-ne v4, v15, :cond_9

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 597
    :cond_8
    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 598
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v15, v15, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_2

    .line 603
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_2

    .line 606
    .end local v4    # "ch":C
    :cond_a
    const/16 v15, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 607
    if-eqz p2, :cond_0

    .line 608
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_0

    .line 612
    .end local v7    # "i":I
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 615
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v13, v15, 0x1

    .line 616
    .local v13, "start":I
    add-int v5, v13, v10

    .line 618
    .local v5, "end":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v16, v0

    const/16 v17, 0x22

    aput-char v17, v15, v16

    .line 619
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v10, v1, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 621
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 623
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 624
    const/4 v9, -0x1

    .line 626
    .local v9, "lastSpecialIndex":I
    move v7, v13

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v5, :cond_13

    .line 627
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v15, v7

    .line 629
    .restart local v4    # "ch":C
    const/16 v15, 0x22

    if-eq v4, v15, :cond_d

    const/16 v15, 0x2f

    if-eq v4, v15, :cond_d

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_f

    .line 632
    :cond_d
    move v9, v7

    .line 633
    add-int/lit8 v11, v11, 0x1

    .line 626
    :cond_e
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 637
    :cond_f
    const/16 v15, 0x8

    if-eq v4, v15, :cond_10

    const/16 v15, 0xc

    if-eq v4, v15, :cond_10

    const/16 v15, 0xa

    if-eq v4, v15, :cond_10

    const/16 v15, 0xd

    if-eq v4, v15, :cond_10

    const/16 v15, 0x9

    if-ne v4, v15, :cond_11

    .line 642
    :cond_10
    move v9, v7

    .line 643
    add-int/lit8 v11, v11, 0x1

    .line 644
    goto :goto_4

    .line 647
    :cond_11
    const/16 v15, 0x20

    if-ge v4, v15, :cond_12

    .line 648
    move v9, v7

    .line 649
    add-int/lit8 v11, v11, 0x5

    .line 650
    goto :goto_4

    .line 653
    :cond_12
    const/16 v15, 0x7f

    if-lt v4, v15, :cond_e

    .line 654
    move v9, v7

    .line 655
    add-int/lit8 v11, v11, 0x5

    .line 656
    goto :goto_4

    .line 660
    .end local v4    # "ch":C
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15

    if-le v11, v15, :cond_14

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 663
    :cond_14
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 665
    move v7, v9

    :goto_5
    if-lt v7, v13, :cond_1b

    .line 666
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v15, v7

    .line 668
    .restart local v4    # "ch":C
    const/16 v15, 0x8

    if-eq v4, v15, :cond_15

    const/16 v15, 0xc

    if-eq v4, v15, :cond_15

    const/16 v15, 0xa

    if-eq v4, v15, :cond_15

    const/16 v15, 0xd

    if-eq v4, v15, :cond_15

    const/16 v15, 0x9

    if-ne v4, v15, :cond_17

    .line 673
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x2

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    sget-object v17, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v17, v17, v4

    aput-char v17, v15, v16

    .line 676
    add-int/lit8 v5, v5, 0x1

    .line 665
    :cond_16
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 680
    :cond_17
    const/16 v15, 0x22

    if-eq v4, v15, :cond_18

    const/16 v15, 0x2f

    if-eq v4, v15, :cond_18

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_19

    .line 683
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x2

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 684
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    aput-char v4, v15, v16

    .line 686
    add-int/lit8 v5, v5, 0x1

    .line 687
    goto :goto_6

    .line 690
    :cond_19
    const/16 v15, 0x20

    if-ge v4, v15, :cond_1a

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x6

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    const/16 v17, 0x75

    aput-char v17, v15, v16

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x2

    const/16 v17, 0x30

    aput-char v17, v15, v16

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x3

    const/16 v17, 0x30

    aput-char v17, v15, v16

    .line 696
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x4

    sget-object v17, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v18, v4, 0x2

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x5

    sget-object v17, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v18, v4, 0x2

    add-int/lit8 v18, v18, 0x1

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    .line 698
    add-int/lit8 v5, v5, 0x5

    .line 699
    goto/16 :goto_6

    .line 702
    :cond_1a
    const/16 v15, 0x7f

    if-lt v4, v15, :cond_16

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x6

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x1

    const/16 v17, 0x75

    aput-char v17, v15, v16

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x2

    sget-object v17, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v18, v4, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x3

    sget-object v17, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v18, v4, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    .line 708
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x4

    sget-object v17, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v18, v4, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    .line 709
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v7, 0x5

    sget-object v17, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    and-int/lit8 v18, v4, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    .line 710
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_6

    .line 714
    .end local v4    # "ch":C
    :cond_1b
    if-eqz p2, :cond_1c

    .line 715
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    const/16 v17, 0x22

    aput-char v17, v15, v16

    .line 716
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aput-char p2, v15, v16

    goto/16 :goto_0

    .line 718
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x22

    aput-char v17, v15, v16

    goto/16 :goto_0

    .line 724
    .end local v7    # "i":I
    .end local v9    # "lastSpecialIndex":I
    :cond_1d
    const/4 v12, 0x0

    .line 725
    .local v12, "specialCount":I
    const/4 v9, -0x1

    .line 726
    .restart local v9    # "lastSpecialIndex":I
    const/4 v6, -0x1

    .line 727
    .local v6, "firstSpecialIndex":I
    const/4 v8, 0x0

    .line 728
    .local v8, "lastSpecial":C
    if-eqz p3, :cond_23

    .line 729
    move v7, v13

    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v5, :cond_23

    .line 730
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v15, v7

    .line 731
    .restart local v4    # "ch":C
    const/16 v15, 0x5d

    if-lt v4, v15, :cond_1f

    .line 729
    :cond_1e
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 735
    :cond_1f
    const/16 v15, 0x20

    if-eq v4, v15, :cond_1e

    .line 739
    const/16 v15, 0x30

    if-lt v4, v15, :cond_20

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_1e

    .line 743
    :cond_20
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v15, v15

    if-ge v4, v15, :cond_21

    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v15, v15, v4

    if-nez v15, :cond_22

    :cond_21
    const/16 v15, 0x2f

    if-ne v4, v15, :cond_1e

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 745
    :cond_22
    add-int/lit8 v12, v12, 0x1

    .line 746
    move v9, v7

    .line 747
    move v8, v4

    .line 749
    const/4 v15, -0x1

    if-ne v6, v15, :cond_1e

    .line 750
    move v6, v7

    goto :goto_8

    .line 756
    .end local v4    # "ch":C
    .end local v7    # "i":I
    :cond_23
    add-int/2addr v11, v12

    .line 757
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15

    if-le v11, v15, :cond_24

    .line 758
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 760
    :cond_24
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 762
    const/4 v15, 0x1

    if-ne v12, v15, :cond_26

    .line 763
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x2

    sub-int v19, v5, v9

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v9

    .line 765
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v9, 0x1

    sget-object v16, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v16, v16, v8

    aput-char v16, v15, v9

    .line 783
    :cond_25
    if-eqz p2, :cond_2a

    .line 784
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    const/16 v17, 0x22

    aput-char v17, v15, v16

    .line 785
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aput-char p2, v15, v16

    goto/16 :goto_0

    .line 766
    :cond_26
    const/4 v15, 0x1

    if-le v12, v15, :cond_25

    .line 767
    sub-int v14, v6, v13

    .line 768
    .local v14, "textIndex":I
    move v2, v6

    .line 769
    .local v2, "bufIndex":I
    move v7, v14

    .restart local v7    # "i":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_25

    .line 770
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 772
    .restart local v4    # "ch":C
    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v15, v15

    if-ge v4, v15, :cond_27

    sget-object v15, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v15, v15, v4

    if-nez v15, :cond_28

    :cond_27
    const/16 v15, 0x2f

    if-ne v4, v15, :cond_29

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 774
    :cond_28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bufIndex":I
    .local v3, "bufIndex":I
    const/16 v16, 0x5c

    aput-char v16, v15, v2

    .line 775
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    sget-object v16, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v16, v16, v4

    aput-char v16, v15, v3

    .line 776
    add-int/lit8 v5, v5, 0x1

    .line 769
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 778
    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    aput-char v4, v15, v2

    move v2, v3

    .end local v3    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    goto :goto_a

    .line 787
    .end local v2    # "bufIndex":I
    .end local v4    # "ch":C
    .end local v7    # "i":I
    .end local v14    # "textIndex":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x22

    aput-char v17, v15, v16

    goto/16 :goto_0
.end method

.method private writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1243
    if-nez p1, :cond_1

    .line 1244
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v9, 0x4

    .line 1245
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_0

    .line 1246
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1248
    :cond_0
    const-string v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 1249
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1323
    :goto_0
    return-void

    .line 1253
    .end local v6    # "newcount":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1254
    .local v5, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 1255
    .restart local v6    # "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_6

    .line 1256
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_5

    .line 1257
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1258
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 1259
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1260
    .local v0, "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_2

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x27

    if-eq v0, v9, :cond_2

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_3

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1262
    :cond_2
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1263
    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1258
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1265
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_2

    .line 1268
    .end local v0    # "ch":C
    :cond_4
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1271
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1274
    :cond_6
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v9, 0x1

    .line 1275
    .local v8, "start":I
    add-int v1, v8, v5

    .line 1277
    .local v1, "end":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1278
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1279
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1281
    const/4 v7, 0x0

    .line 1282
    .local v7, "specialCount":I
    const/4 v4, -0x1

    .line 1283
    .local v4, "lastSpecialIndex":I
    const/4 v3, 0x0

    .line 1284
    .local v3, "lastSpecial":C
    move v2, v8

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_9

    .line 1285
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 1286
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_7

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_7

    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_8

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1288
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 1289
    move v4, v2

    .line 1290
    move v3, v0

    .line 1284
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1294
    .end local v0    # "ch":C
    :cond_9
    add-int/2addr v6, v7

    .line 1295
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_a

    .line 1296
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1298
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1300
    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    .line 1301
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1302
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1303
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 1322
    :cond_b
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 1304
    :cond_c
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    .line 1305
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1306
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1307
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 1308
    add-int/lit8 v1, v1, 0x1

    .line 1309
    add-int/lit8 v2, v4, -0x2

    :goto_4
    if-lt v2, v8, :cond_b

    .line 1310
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 1312
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_d

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_d

    const/16 v9, 0x27

    if-eq v0, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_e

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1314
    :cond_d
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1315
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 1316
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 1317
    add-int/lit8 v1, v1, 0x1

    .line 1309
    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 276
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 264
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 265
    return-object p0

    .line 263
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 269
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "csq":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 271
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_1

    .line 330
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 333
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 334
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public expandCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    const/4 v4, 0x0

    .line 199
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 201
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 202
    move v0, p1

    .line 204
    :cond_0
    new-array v1, v0, [C

    .line 205
    .local v1, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 207
    return-void
.end method

.method public flush()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1553
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 1564
    :goto_0
    return-void

    .line 1558
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 1559
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 125
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 281
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 5
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 300
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "writer not null"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_0
    if-nez p1, :cond_1

    .line 304
    const-string p1, "UTF-8"

    .line 307
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 308
    .local v0, "cs":Ljava/nio/charset/Charset;
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 310
    .local v1, "encoder":Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;->encode([CII)[B

    move-result-object v2

    return-object v2
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v1, [C

    .line 294
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 146
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 147
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 149
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v1, v2

    .line 156
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 157
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    .line 132
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 133
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 141
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 142
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 143
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 217
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 218
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_1

    .line 220
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 233
    :cond_0
    :goto_0
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 234
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 235
    return-void

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 224
    .local v1, "rest":I
    add-int v2, p2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 225
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 227
    sub-int/2addr p3, v1

    .line 228
    add-int/2addr p2, v1

    .line 229
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_1

    .line 230
    move v0, p3

    goto :goto_0
.end method

.method public write(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 893
    if-eqz p1, :cond_0

    .line 894
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 898
    :goto_0
    return-void

    .line 896
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 167
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 172
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 173
    :cond_1
    if-nez p3, :cond_2

    .line 196
    :goto_0
    return-void

    .line 177
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 178
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 179
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_4

    .line 180
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 193
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 184
    .local v1, "rest":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 187
    sub-int/2addr p3, v1

    .line 188
    add-int/2addr p2, v1

    .line 189
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_4

    .line 190
    move v0, p3

    goto :goto_1
.end method

.method public writeByteArray([B)V
    .locals 17
    .param p1, "bytes"    # [B

    .prologue
    .line 371
    move-object/from16 v0, p1

    array-length v2, v0

    .line 372
    .local v2, "bytesLen":I
    if-nez v2, :cond_0

    .line 373
    const-string v14, "\"\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void

    .line 377
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 379
    .local v1, "CA":[C
    div-int/lit8 v14, v2, 0x3

    mul-int/lit8 v6, v14, 0x3

    .line 380
    .local v6, "eLen":I
    add-int/lit8 v14, v2, -0x1

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    shl-int/lit8 v3, v14, 0x2

    .line 382
    .local v3, "charsLen":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 383
    .local v10, "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v14, v3

    add-int/lit8 v9, v14, 0x2

    .line 384
    .local v9, "newcount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v14, v14

    if-le v9, v14, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v14, :cond_5

    .line 386
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 388
    const/4 v12, 0x0

    .local v12, "s":I
    move v13, v12

    .end local v12    # "s":I
    .local v13, "s":I
    :goto_1
    if-ge v13, v6, :cond_1

    .line 390
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "s":I
    .restart local v12    # "s":I
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "s":I
    .restart local v13    # "s":I
    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "s":I
    .restart local v12    # "s":I
    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    or-int v7, v14, v15

    .line 393
    .local v7, "i":I
    ushr-int/lit8 v14, v7, 0x12

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 394
    ushr-int/lit8 v14, v7, 0xc

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 395
    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 396
    and-int/lit8 v14, v7, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    move v13, v12

    .line 397
    .end local v12    # "s":I
    .restart local v13    # "s":I
    goto :goto_1

    .line 400
    .end local v7    # "i":I
    :cond_1
    sub-int v8, v2, v6

    .line 401
    .local v8, "left":I
    if-lez v8, :cond_2

    .line 403
    aget-byte v14, p1, v6

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v14, 0xa

    const/4 v14, 0x2

    if-ne v8, v14, :cond_3

    add-int/lit8 v14, v2, -0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x2

    :goto_2
    or-int v7, v15, v14

    .line 406
    .restart local v7    # "i":I
    shr-int/lit8 v14, v7, 0xc

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 407
    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 408
    const/4 v14, 0x2

    if-ne v8, v14, :cond_4

    and-int/lit8 v14, v7, 0x3f

    aget-char v14, v1, v14

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 409
    const/16 v14, 0x3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 412
    .end local v7    # "i":I
    :cond_2
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_0

    .line 403
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 408
    .restart local v7    # "i":I
    :cond_4
    const/16 v14, 0x3d

    goto :goto_3

    .line 415
    .end local v7    # "i":I
    .end local v8    # "left":I
    .end local v13    # "s":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 417
    :cond_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .local v11, "offset":I
    const/16 v15, 0x22

    aput-char v15, v14, v10

    .line 421
    const/4 v12, 0x0

    .restart local v12    # "s":I
    move v4, v11

    .local v4, "d":I
    move v5, v4

    .end local v4    # "d":I
    .local v5, "d":I
    move v13, v12

    .end local v12    # "s":I
    .restart local v13    # "s":I
    :goto_4
    if-ge v13, v6, :cond_7

    .line 423
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "s":I
    .restart local v12    # "s":I
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "s":I
    .restart local v13    # "s":I
    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "s":I
    .restart local v12    # "s":I
    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    or-int v7, v14, v15

    .line 426
    .restart local v7    # "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    ushr-int/lit8 v15, v7, 0x12

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v5

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v15, v7, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v4

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    ushr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v5

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "d":I
    .restart local v5    # "d":I
    and-int/lit8 v15, v7, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v4

    move v13, v12

    .line 430
    .end local v12    # "s":I
    .restart local v13    # "s":I
    goto :goto_4

    .line 433
    .end local v7    # "i":I
    :cond_7
    sub-int v8, v2, v6

    .line 434
    .restart local v8    # "left":I
    if-lez v8, :cond_8

    .line 436
    aget-byte v14, p1, v6

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v14, 0xa

    const/4 v14, 0x2

    if-ne v8, v14, :cond_9

    add-int/lit8 v14, v2, -0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x2

    :goto_5
    or-int v7, v15, v14

    .line 439
    .restart local v7    # "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x5

    shr-int/lit8 v16, v7, 0xc

    aget-char v16, v1, v16

    aput-char v16, v14, v15

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x4

    ushr-int/lit8 v16, v7, 0x6

    and-int/lit8 v16, v16, 0x3f

    aget-char v16, v1, v16

    aput-char v16, v14, v15

    .line 441
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v9, -0x3

    const/4 v14, 0x2

    if-ne v8, v14, :cond_a

    and-int/lit8 v14, v7, 0x3f

    aget-char v14, v1, v14

    :goto_6
    aput-char v14, v15, v16

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x2

    const/16 v16, 0x3d

    aput-char v16, v14, v15

    .line 444
    .end local v7    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x1

    const/16 v16, 0x22

    aput-char v16, v14, v15

    goto/16 :goto_0

    .line 436
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 441
    .restart local v7    # "i":I
    :cond_a
    const/16 v14, 0x3d

    goto :goto_6
.end method

.method public writeFieldEmptyList(CLjava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 799
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 800
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 1327
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checkSpecial"    # Z

    .prologue
    const/16 v1, 0x3a

    .line 1330
    if-nez p1, :cond_0

    .line 1331
    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1349
    :goto_0
    return-void

    .line 1335
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1336
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1340
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    .line 1343
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1344
    invoke-direct {p0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0

    .line 1346
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldNull(CLjava/lang/String;)V
    .locals 0
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 793
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 795
    return-void
.end method

.method public writeFieldNullBoolean(CLjava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 815
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 816
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullList(CLjava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 825
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 826
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullNumber(CLjava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 835
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 836
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullString(CLjava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 805
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 806
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 845
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 846
    if-nez p3, :cond_0

    .line 847
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 5
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 1007
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1008
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1009
    const-wide/16 v2, 0x0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_0

    .line 1010
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1022
    :goto_0
    return-void

    .line 1011
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1013
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1014
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1016
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "text":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1018
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1020
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 3
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 989
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 990
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 991
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_0

    .line 992
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1004
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 995
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 996
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 998
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "text":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1002
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 9
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 901
    const/high16 v6, -0x80000000

    if-eq p3, v6, :cond_0

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 902
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;I)V

    .line 935
    :goto_0
    return-void

    .line 906
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v1, 0x27

    .line 908
    .local v1, "keySeperator":C
    :goto_1
    if-gez p3, :cond_3

    neg-int v6, p3

    invoke-static {v6}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 910
    .local v0, "intSize":I
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 911
    .local v3, "nameLen":I
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x4

    add-int v4, v6, v0

    .line 912
    .local v4, "newcount":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v4, v6, :cond_5

    .line 913
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_4

    .line 914
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;I)V

    goto :goto_0

    .line 906
    .end local v0    # "intSize":I
    .end local v1    # "keySeperator":C
    .end local v3    # "nameLen":I
    .end local v4    # "newcount":I
    :cond_2
    const/16 v1, 0x22

    goto :goto_1

    .line 908
    .restart local v1    # "keySeperator":C
    :cond_3
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    goto :goto_2

    .line 917
    .restart local v0    # "intSize":I
    .restart local v3    # "nameLen":I
    .restart local v4    # "newcount":I
    :cond_4
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 920
    :cond_5
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 921
    .local v5, "start":I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 923
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v6, v5

    .line 925
    add-int v6, v5, v3

    add-int/lit8 v2, v6, 0x1

    .line 927
    .local v2, "nameEnd":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    aput-char v1, v6, v7

    .line 929
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p2, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 931
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    aput-char v1, v6, v7

    .line 932
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x2

    const/16 v8, 0x3a

    aput-char v8, v6, v7

    .line 934
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 9
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 944
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p3, v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 945
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;J)V

    .line 980
    :goto_0
    return-void

    .line 949
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v1, 0x27

    .line 951
    .local v1, "keySeperator":C
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gez v6, :cond_3

    neg-long v6, p3

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 953
    .local v0, "intSize":I
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 954
    .local v3, "nameLen":I
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x4

    add-int v4, v6, v0

    .line 955
    .local v4, "newcount":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v4, v6, :cond_5

    .line 956
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_4

    .line 957
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 958
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_0

    .line 949
    .end local v0    # "intSize":I
    .end local v1    # "keySeperator":C
    .end local v3    # "nameLen":I
    .end local v4    # "newcount":I
    :cond_2
    const/16 v1, 0x22

    goto :goto_1

    .line 951
    .restart local v1    # "keySeperator":C
    :cond_3
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_2

    .line 962
    .restart local v0    # "intSize":I
    .restart local v3    # "nameLen":I
    .restart local v4    # "newcount":I
    :cond_4
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 965
    :cond_5
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 966
    .local v5, "start":I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 968
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v6, v5

    .line 970
    add-int v6, v5, v3

    add-int/lit8 v2, v6, 0x1

    .line 972
    .local v2, "nameEnd":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    aput-char v1, v6, v7

    .line 974
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p2, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 976
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    aput-char v1, v6, v7

    .line 977
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x2

    const/16 v8, 0x3a

    aput-char v8, v6, v7

    .line 979
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 2
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p3, :cond_0

    .line 1195
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1196
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1213
    :goto_0
    return-void

    .line 1201
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1202
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1211
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1025
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1026
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1028
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1029
    if-nez p3, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1052
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1035
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1037
    const/16 v0, 0x3a

    invoke-direct {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1038
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1040
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1044
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1045
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1046
    if-nez p3, :cond_4

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1049
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1217
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1218
    if-nez p3, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1223
    :goto_0
    return-void

    .line 1221
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 11
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v10, 0x0

    .line 855
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v1, 0x27

    .line 857
    .local v1, "keySeperator":C
    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x4

    .line 859
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 860
    .local v3, "nameLen":I
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x4

    add-int v4, v7, v0

    .line 861
    .local v4, "newcount":I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_3

    .line 862
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v7, :cond_2

    .line 863
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 864
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 865
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 866
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 890
    :goto_2
    return-void

    .line 855
    .end local v0    # "intSize":I
    .end local v1    # "keySeperator":C
    .end local v3    # "nameLen":I
    .end local v4    # "newcount":I
    :cond_0
    const/16 v1, 0x22

    goto :goto_0

    .restart local v1    # "keySeperator":C
    :cond_1
    move v0, v6

    .line 857
    goto :goto_1

    .line 869
    .restart local v0    # "intSize":I
    .restart local v3    # "nameLen":I
    .restart local v4    # "newcount":I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 872
    :cond_3
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 873
    .local v5, "start":I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 875
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v7, v5

    .line 877
    add-int v7, v5, v3

    add-int/lit8 v2, v7, 0x1

    .line 879
    .local v2, "nameEnd":I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x1

    aput-char v1, v7, v8

    .line 881
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p2, v10, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 883
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    aput-char v1, v7, v8

    .line 885
    if-eqz p3, :cond_4

    .line 886
    const-string v7, ":true"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v2, 0x2

    invoke-static {v7, v10, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 888
    :cond_4
    const-string v6, ":false"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x2

    const/4 v9, 0x6

    invoke-static {v6, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public writeFieldValue1(CLjava/lang/String;I)V
    .locals 0
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 938
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 939
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 941
    return-void
.end method

.method public writeFieldValue1(CLjava/lang/String;J)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 983
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 984
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 986
    return-void
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 346
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_0

    .line 347
    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 351
    :cond_0
    if-gez p1, :cond_2

    neg-int v3, p1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 353
    .local v2, "size":I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v1, v3, v2

    .line 354
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 356
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 367
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 351
    .end local v1    # "newcount":I
    .end local v2    # "size":I
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v2

    goto :goto_1

    .line 358
    .restart local v1    # "newcount":I
    .restart local v2    # "size":I
    :cond_3
    new-array v0, v2, [C

    .line 359
    .local v0, "chars":[C
    invoke-static {p1, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 360
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_0
.end method

.method public writeIntAndChar(IC)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "c"    # C

    .prologue
    .line 448
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_0

    .line 449
    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 472
    :goto_0
    return-void

    .line 454
    :cond_0
    if-gez p1, :cond_1

    neg-int v3, p1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 456
    .local v2, "size":I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v3, v2

    .line 457
    .local v0, "newcount0":I
    add-int/lit8 v1, v0, 0x1

    .line 459
    .local v1, "newcount1":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_3

    .line 460
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_2

    .line 461
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 462
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 454
    .end local v0    # "newcount0":I
    .end local v1    # "newcount1":I
    .end local v2    # "size":I
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v2

    goto :goto_1

    .line 465
    .restart local v0    # "newcount0":I
    .restart local v1    # "newcount1":I
    .restart local v2    # "size":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 468
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 469
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p2, v3, v0

    .line 471
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 7
    .param p1, "i"    # J

    .prologue
    .line 502
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 503
    const-string v3, "-9223372036854775808"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 507
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    neg-long v4, p1

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 509
    .local v2, "size":I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v1, v3, v2

    .line 510
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 511
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 512
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 521
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 523
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 507
    .end local v1    # "newcount":I
    .end local v2    # "size":I
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v2

    goto :goto_1

    .line 514
    .restart local v1    # "newcount":I
    .restart local v2    # "size":I
    :cond_3
    new-array v0, v2, [C

    .line 515
    .local v0, "chars":[C
    invoke-static {p1, p2, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 516
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_0
.end method

.method public writeLongAndChar(JC)V
    .locals 7
    .param p1, "i"    # J
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 476
    const-string v3, "-9223372036854775808"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 499
    :goto_0
    return-void

    .line 481
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    neg-long v4, p1

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 483
    .local v2, "size":I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v3, v2

    .line 484
    .local v0, "newcount0":I
    add-int/lit8 v1, v0, 0x1

    .line 486
    .local v1, "newcount1":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_3

    .line 487
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_2

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 489
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 481
    .end local v0    # "newcount0":I
    .end local v1    # "newcount1":I
    .end local v2    # "size":I
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v2

    goto :goto_1

    .line 492
    .restart local v0    # "newcount0":I
    .restart local v1    # "newcount1":I
    .restart local v2    # "size":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 495
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 496
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p3, v3, v0

    .line 498
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1

    .prologue
    .line 527
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1235
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1240
    :goto_0
    return-void

    .line 1238
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 1226
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1232
    :goto_0
    return-void

    .line 1230
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 252
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 259
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 260
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 248
    return-void
.end method
