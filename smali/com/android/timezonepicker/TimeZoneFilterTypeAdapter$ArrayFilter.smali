.class Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "TimeZoneFilterTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;


# direct methods
.method private constructor <init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$1;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)V

    return-void
.end method

.method private handleSearchByGmt(Ljava/util/ArrayList;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xe

    const/4 v5, 0x3

    .line 306
    if-ltz p2, :cond_3

    .line 307
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 308
    const/16 v0, 0x13

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    # getter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;
    invoke-static {v1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    new-instance v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "GMT+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 311
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    # getter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;
    invoke-static {v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    new-instance v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GMT+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2, p2}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 318
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_2
    mul-int/lit8 p2, p2, -0x1

    .line 323
    :cond_3
    if-nez p3, :cond_6

    if-eqz p2, :cond_6

    .line 324
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    # getter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;
    invoke-static {v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    new-instance v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2, p2}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 326
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 330
    const/16 v0, -0xa

    :goto_1
    const/16 v1, -0x13

    if-lt v0, v1, :cond_6

    .line 331
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    # getter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;
    invoke-static {v1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    new-instance v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 333
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 338
    :cond_6
    return-void
.end method

.method private isStartingInitialsFor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 274
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v2

    move v0, v1

    move v3, v2

    .line 278
    :goto_0
    if-ge v4, v6, :cond_5

    .line 279
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_1

    move v0, v1

    .line 278
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_1
    if-eqz v0, :cond_0

    .line 285
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v3, v7, :cond_3

    .line 299
    :cond_2
    :goto_2
    return v2

    .line 288
    :cond_3
    if-ne v0, v5, :cond_4

    move v2, v1

    .line 289
    goto :goto_2

    :cond_4
    move v3, v0

    move v0, v2

    .line 291
    goto :goto_1

    .line 296
    :cond_5
    const-string v0, "usa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "united states"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 297
    goto :goto_2
.end method


# virtual methods
.method public parseNum(Ljava/lang/String;I)I
    .locals 8

    .prologue
    const/16 v6, 0xa

    const/high16 v4, -0x80000000

    .line 348
    .line 350
    const/4 v0, 0x1

    .line 353
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 354
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v2, v3

    move v7, v0

    move v0, v1

    move v1, v7

    .line 368
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v4

    .line 395
    :goto_1
    return v0

    .line 356
    :pswitch_1
    const/4 v0, -0x1

    .line 359
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v3, v1, :cond_0

    move v0, v4

    .line 361
    goto :goto_1

    .line 364
    :cond_0
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 378
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 379
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 381
    mul-int/lit8 v0, v0, 0xa

    invoke-static {v2, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v3

    .line 387
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v4

    .line 389
    goto :goto_1

    :cond_3
    move v0, v4

    .line 383
    goto :goto_1

    .line 395
    :cond_4
    mul-int/2addr v0, v1

    goto :goto_1

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x2b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 175
    if-eqz p1, :cond_c

    .line 176
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 179
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iput-object v2, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 181
    iput v3, v5, Landroid/widget/Filter$FilterResults;->count:I

    move-object v0, v5

    .line 255
    :goto_1
    return-object v0

    .line 187
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1

    .line 198
    :cond_1
    const-string v0, "gmt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 199
    const/4 v0, 0x3

    .line 203
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->parseNum(Ljava/lang/String;I)I

    move-result v2

    .line 204
    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_2

    .line 205
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v0, :cond_5

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_5

    move v0, v4

    .line 207
    :goto_3
    invoke-direct {p0, v6, v2, v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->handleSearchByGmt(Ljava/util/ArrayList;IZ)V

    .line 213
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    # getter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;
    invoke-static {v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_6

    .line 221
    invoke-direct {p0, v1, v2}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->isStartingInitialsFor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_4
    move v2, v4

    .line 233
    :goto_5
    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move v0, v3

    .line 206
    goto :goto_3

    .line 223
    :cond_6
    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 226
    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v2, v3

    :goto_6
    if-ge v2, v10, :cond_a

    aget-object v11, v9, v2

    .line 227
    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v2, v4

    .line 229
    goto :goto_5

    .line 226
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 238
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 240
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 241
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    new-instance v2, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v7, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-direct {v2, v7, v4, v0, v3}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 253
    :cond_9
    iput-object v6, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 254
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v5, Landroid/widget/Filter$FilterResults;->count:I

    move-object v0, v5

    .line 255
    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    :cond_b
    move v0, v3

    goto/16 :goto_2

    :cond_c
    move-object v1, v2

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_3

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    # getter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;
    invoke-static {v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$200(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    # getter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;
    invoke-static {v2}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$200(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;->onSetFilter(ILjava/lang/String;I)V

    .line 422
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    # setter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResultsCount:I
    invoke-static {v0, v1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$402(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;I)I

    .line 424
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->notifyDataSetChanged()V

    .line 429
    :goto_2
    return-void

    .line 408
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    # setter for: Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->access$302(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    .line 427
    :cond_4
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->notifyDataSetInvalidated()V

    goto :goto_2
.end method
