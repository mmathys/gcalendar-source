.class public Lcom/android/common/extendedlinkify/ExtendedLinkify;
.super Ljava/lang/Object;
.source "ExtendedLinkify.java"


# static fields
.field private static final COORD_PATTERN:Ljava/util/regex/Pattern;

.field private static final WILD_CARD_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/common/extendedlinkify/ExtendedLinkify;->WILD_CARD_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "([-+NnSs](\\s)*)?[1-9]?[0-9](\u00b0)(\\s)*([1-5]?[0-9]\')?(\\s)*([1-5]?[0-9](\\.[0-9]+)?\")?((\\s)*[NnSs])?(\\s)*,(\\s)*([-+EeWw](\\s)*)?(1)?[0-9]?[0-9](\u00b0)(\\s)*([1-5]?[0-9]\')?(\\s)*([1-5]?[0-9](\\.[0-9]+)?\")?((\\s)*[EeWw])?|[+-]?[1-9]?[0-9](\\.[0-9]+)(\u00b0)?(\\s)*,(\\s)*[+-]?(1)?[0-9]?[0-9](\\.[0-9]+)(\u00b0)?"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/common/extendedlinkify/ExtendedLinkify;->COORD_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    return-void
.end method

.method public static extendedLinkify(Ljava/lang/String;Z)Landroid/text/Spannable;
    .locals 14

    .prologue
    const/16 v13, 0x21

    const/4 v2, 0x0

    .line 111
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 119
    const-string v0, "user.region"

    const-string v1, "US"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    const/16 v0, 0xf

    invoke-static {v5, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 124
    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v5, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 125
    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 126
    aget-object v1, v0, v2

    invoke-interface {v5, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 127
    aget-object v0, v0, v2

    invoke-interface {v5, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 128
    invoke-static {v5}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->indexFirstNonWhitespaceChar(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 129
    invoke-static {v5}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->indexLastNonWhitespaceChar(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1

    move-object v0, v5

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 135
    :cond_1
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-static {v0}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->forceGeoLink(Landroid/text/Spannable;)V

    goto :goto_0

    .line 163
    :cond_2
    const/16 v0, 0xb

    invoke-static {v5, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v7

    .line 169
    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v5, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 175
    sget-object v1, Lcom/android/common/extendedlinkify/ExtendedLinkify;->COORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move v1, v2

    .line 177
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 179
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    .line 180
    invoke-static {v5, v0, v6, v8}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 184
    new-instance v9, Landroid/text/style/URLSpan;

    const-string v3, "geo:0,0?q="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-direct {v9, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-interface {v5, v9, v6, v8, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 187
    goto :goto_1

    .line 184
    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 192
    :cond_5
    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v5, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 201
    invoke-static {p0}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I

    move-result-object v8

    move v3, v2

    .line 207
    :goto_3
    array-length v4, v8

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_b

    .line 208
    mul-int/lit8 v4, v2, 0x2

    aget v6, v8, v4

    .line 209
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v9, v8, v4

    .line 211
    invoke-static {v5, v0, v6, v9}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 207
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 224
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v6

    .line 225
    :goto_5
    if-ge v4, v9, :cond_9

    .line 226
    invoke-interface {v5, v4}, Landroid/text/Spannable;->charAt(I)C

    move-result v11

    .line 227
    const/16 v12, 0x2b

    if-eq v11, v12, :cond_7

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 228
    :cond_7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 231
    :cond_9
    new-instance v11, Landroid/text/style/URLSpan;

    const-string v12, "tel:"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v12, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-direct {v11, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-interface {v5, v11, v6, v9, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 231
    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 240
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v7, :cond_c

    if-nez v3, :cond_c

    if-nez v1, :cond_c

    .line 242
    const-string v0, "ExtendedLinkify"

    const-string v1, "No linkification matches, using geo default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {v5}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->forceGeoLink(Landroid/text/Spannable;)V

    :cond_c
    move-object v0, v5

    .line 246
    goto/16 :goto_0
.end method

.method private static findNanpMatchEnd(Ljava/lang/CharSequence;I)I
    .locals 12

    .prologue
    const/4 v10, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/16 v9, 0x31

    .line 369
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v3, p1, 0x4

    if-le v0, v3, :cond_0

    add-int/lit8 v0, p1, 0x4

    .line 370
    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    add-int/lit8 p1, p1, 0x4

    .line 374
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 377
    const/16 v3, 0x78

    move v4, v1

    move v6, p1

    .line 380
    :goto_0
    if-gt v6, v7, :cond_9

    .line 382
    if-ge v6, v7, :cond_1

    .line 383
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 388
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 389
    if-nez v4, :cond_f

    .line 392
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .line 393
    const/16 v4, 0xb

    if-le v3, v4, :cond_e

    move v0, v5

    .line 421
    :goto_3
    return v0

    .line 385
    :cond_1
    const/16 v0, 0x1b

    goto :goto_1

    .line 397
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 398
    if-ne v3, v9, :cond_3

    const/4 v0, 0x4

    if-eq v4, v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    if-ne v4, v0, :cond_5

    :cond_4
    move v0, v2

    move v1, v3

    move v3, v4

    .line 412
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    move v3, v1

    move v1, v0

    .line 413
    goto :goto_0

    .line 401
    :cond_5
    if-ne v3, v9, :cond_6

    if-ne v4, v2, :cond_6

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_4

    .line 402
    :cond_6
    if-eqz v1, :cond_9

    if-ne v3, v9, :cond_7

    if-eq v4, v10, :cond_d

    :cond_7
    const/4 v0, 0x6

    if-ne v4, v0, :cond_9

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_4

    .line 407
    :cond_8
    const-string v8, "()+-*#."

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 415
    :cond_9
    if-eq v3, v9, :cond_a

    if-eq v4, v10, :cond_b

    const/16 v0, 0xa

    if-eq v4, v0, :cond_b

    :cond_a
    if-ne v3, v9, :cond_c

    const/16 v0, 0xb

    if-ne v4, v0, :cond_c

    :cond_b
    move v0, v6

    .line 418
    goto :goto_3

    :cond_c
    move v0, v5

    .line 421
    goto :goto_3

    :cond_d
    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_4

    :cond_e
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_4

    :cond_f
    move v0, v3

    goto :goto_2
.end method

.method static findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v2, v1, 0x1

    .line 307
    if-gez v2, :cond_1

    .line 308
    new-array v0, v0, [I

    .line 342
    :goto_0
    return-object v0

    .line 325
    :cond_0
    invoke-static {p0, v0}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->findNanpMatchEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 326
    if-le v1, v0, :cond_4

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 315
    :cond_1
    if-ge v0, v2, :cond_3

    .line 317
    :goto_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge v0, v2, :cond_2

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_2
    if-ne v0, v2, :cond_0

    .line 338
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 339
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_5

    .line 340
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 339
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 332
    :cond_4
    :goto_3
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 342
    goto :goto_0
.end method

.method public static forceGeoLink(Landroid/text/Spannable;)V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/android/common/extendedlinkify/ExtendedLinkify;->WILD_CARD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "geo:0,0?q="

    invoke-static {p0, v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    .line 251
    return-void
.end method

.method private static indexFirstNonWhitespaceChar(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 255
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    :goto_1
    return v0

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static indexLastNonWhitespaceChar(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 263
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 264
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    :goto_1
    return v0

    .line 263
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 276
    if-ne p2, p3, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 281
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 282
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 283
    if-lt p2, v4, :cond_2

    if-lt p2, v3, :cond_3

    :cond_2
    if-le p3, v4, :cond_5

    if-gt p3, v3, :cond_5

    .line 285
    :cond_3
    const-string v0, "ExtendedLinkify"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    invoke-interface {p0, p2, p3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 287
    const-string v1, "ExtendedLinkify"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Not linkifying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as phone number due to overlap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
