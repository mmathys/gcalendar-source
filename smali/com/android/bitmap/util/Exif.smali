.class public Lcom/android/bitmap/util/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/bitmap/util/Exif;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/util/Exif;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/io/InputStream;J)I
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 40
    if-nez p0, :cond_1

    .line 184
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 71
    :cond_1
    new-instance v6, Lcom/android/bitmap/util/InputStreamBuffer;

    const/16 v0, 0x10

    invoke-direct {v6, p0, v0, v1}, Lcom/android/bitmap/util/InputStreamBuffer;-><init>(Ljava/io/InputStream;IZ)V

    .line 76
    invoke-static {v6, p1, p2, v3}, Lcom/android/bitmap/util/Exif;->has(Lcom/android/bitmap/util/InputStreamBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v6, v1}, Lcom/android/bitmap/util/InputStreamBuffer;->get(I)B

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 79
    invoke-virtual {v6, v3}, Lcom/android/bitmap/util/InputStreamBuffer;->get(I)B

    move-result v0

    const/16 v2, -0x28

    if-ne v0, v2, :cond_4

    move v0, v3

    .line 80
    :goto_1
    if-eqz v0, :cond_0

    :cond_2
    move v0, v1

    .line 86
    :cond_3
    :goto_2
    add-int/lit8 v2, v0, 0x3

    invoke-static {v6, p1, p2, v2}, Lcom/android/bitmap/util/Exif;->has(Lcom/android/bitmap/util/InputStreamBuffer;JI)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/bitmap/util/InputStreamBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xff

    if-ne v0, v4, :cond_10

    .line 87
    invoke-virtual {v6, v2}, Lcom/android/bitmap/util/InputStreamBuffer;->get(I)B

    move-result v0

    and-int/lit16 v4, v0, 0xff

    .line 90
    const/16 v0, 0xff

    if-ne v4, v0, :cond_5

    move v0, v2

    .line 91
    goto :goto_2

    :cond_4
    move v0, v1

    .line 79
    goto :goto_1

    .line 93
    :cond_5
    add-int/lit8 v0, v2, 0x1

    .line 96
    const/16 v2, 0xd8

    if-eq v4, v2, :cond_3

    if-eq v4, v3, :cond_3

    .line 100
    const/16 v2, 0xd9

    if-eq v4, v2, :cond_6

    const/16 v2, 0xda

    if-ne v4, v2, :cond_7

    .line 102
    :cond_6
    add-int/lit8 v2, v0, -0x4

    invoke-virtual {v6, v2}, Lcom/android/bitmap/util/InputStreamBuffer;->advanceTo(I)V

    move v2, v1

    move v4, v0

    .line 133
    :goto_3
    if-le v2, v9, :cond_0

    .line 135
    invoke-static {v6, v4, v7, v1}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v0

    .line 136
    const v5, 0x49492a00    # 823968.0f

    if-eq v0, v5, :cond_b

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-eq v0, v5, :cond_b

    .line 137
    sget-object v0, Lcom/android/bitmap/util/Exif;->TAG:Ljava/lang/String;

    const-string v2, "Invalid byte order"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_7
    invoke-static {v6, v0, v8, v1}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v5

    .line 108
    if-lt v5, v8, :cond_8

    add-int v2, v0, v5

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6, p1, p2, v2}, Lcom/android/bitmap/util/Exif;->has(Lcom/android/bitmap/util/InputStreamBuffer;JI)Z

    move-result v2

    if-nez v2, :cond_9

    .line 109
    :cond_8
    sget-object v0, Lcom/android/bitmap/util/Exif;->TAG:Ljava/lang/String;

    const-string v2, "Invalid length"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 114
    :cond_9
    const/16 v2, 0xe1

    if-ne v4, v2, :cond_a

    if-lt v5, v9, :cond_a

    add-int/lit8 v2, v0, 0x2

    .line 115
    invoke-static {v6, v2, v7, v1}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v2

    const v4, 0x45786966

    if-ne v2, v4, :cond_a

    add-int/lit8 v2, v0, 0x6

    .line 116
    invoke-static {v6, v2, v8, v1}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v2

    if-nez v2, :cond_a

    .line 117
    add-int/lit8 v2, v0, 0x8

    .line 118
    add-int/lit8 v0, v5, -0x8

    .line 120
    add-int/lit8 v4, v2, -0x4

    invoke-virtual {v6, v4}, Lcom/android/bitmap/util/InputStreamBuffer;->advanceTo(I)V

    move v4, v2

    move v2, v0

    .line 121
    goto :goto_3

    .line 125
    :cond_a
    add-int/2addr v0, v5

    .line 129
    add-int/lit8 v2, v0, -0x4

    invoke-virtual {v6, v2}, Lcom/android/bitmap/util/InputStreamBuffer;->advanceTo(I)V

    goto/16 :goto_2

    .line 140
    :cond_b
    const v5, 0x49492a00    # 823968.0f

    if-ne v0, v5, :cond_d

    move v0, v3

    .line 143
    :goto_4
    add-int/lit8 v3, v4, 0x4

    invoke-static {v6, v3, v7, v0}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 144
    const/16 v5, 0xa

    if-lt v3, v5, :cond_c

    if-le v3, v2, :cond_e

    .line 145
    :cond_c
    sget-object v0, Lcom/android/bitmap/util/Exif;->TAG:Ljava/lang/String;

    const-string v2, "Invalid offset"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 140
    goto :goto_4

    .line 148
    :cond_e
    add-int/2addr v4, v3

    .line 149
    sub-int v3, v2, v3

    .line 152
    add-int/lit8 v2, v4, -0x4

    invoke-virtual {v6, v2}, Lcom/android/bitmap/util/InputStreamBuffer;->advanceTo(I)V

    .line 155
    add-int/lit8 v2, v4, -0x2

    invoke-static {v6, v2, v8, v0}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v2

    move v5, v4

    move v4, v3

    .line 157
    :goto_5
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    const/16 v2, 0xc

    if-lt v4, v2, :cond_0

    .line 159
    invoke-static {v6, v5, v8, v0}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v2

    .line 160
    const/16 v7, 0x112

    if-ne v2, v7, :cond_f

    .line 162
    add-int/lit8 v2, v5, 0x8

    invoke-static {v6, v2, v8, v0}, Lcom/android/bitmap/util/Exif;->pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I

    move-result v0

    .line 163
    packed-switch v0, :pswitch_data_0

    .line 173
    :pswitch_1
    sget-object v0, Lcom/android/bitmap/util/Exif;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported orientation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    :pswitch_2
    const/16 v1, 0xb4

    goto/16 :goto_0

    .line 169
    :pswitch_3
    const/16 v1, 0x5a

    goto/16 :goto_0

    .line 171
    :pswitch_4
    const/16 v1, 0x10e

    goto/16 :goto_0

    .line 176
    :cond_f
    add-int/lit8 v5, v5, 0xc

    .line 177
    add-int/lit8 v2, v4, -0xc

    .line 180
    add-int/lit8 v4, v5, -0x4

    invoke-virtual {v6, v4}, Lcom/android/bitmap/util/InputStreamBuffer;->advanceTo(I)V

    move v4, v2

    move v2, v3

    goto :goto_5

    :cond_10
    move v4, v2

    move v2, v1

    goto/16 :goto_3

    :cond_11
    move v2, v1

    move v4, v0

    goto/16 :goto_3

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static has(Lcom/android/bitmap/util/InputStreamBuffer;JI)Z
    .locals 3

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 205
    int-to-long v0, p3

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/bitmap/util/InputStreamBuffer;->has(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static pack(Lcom/android/bitmap/util/InputStreamBuffer;IIZ)I
    .locals 4

    .prologue
    .line 189
    const/4 v0, 0x1

    .line 190
    if-eqz p3, :cond_0

    .line 191
    add-int/lit8 v0, p2, -0x1

    add-int/2addr p1, v0

    .line 192
    const/4 v0, -0x1

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 196
    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_1

    .line 197
    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/bitmap/util/InputStreamBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 198
    add-int/2addr p1, v0

    move p2, v2

    goto :goto_0

    .line 200
    :cond_1
    return v1
.end method
