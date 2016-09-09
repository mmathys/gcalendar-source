.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field volatile transient count:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final loadFactor:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field transient modCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field volatile transient table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field transient threshold:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(IF)V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 289
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    .line 290
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 291
    return-void
.end method

.method static final newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    .locals 1

    .prologue
    .line 294
    new-array v0, p0, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 547
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    .line 548
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 550
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 551
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 552
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 559
    :cond_1
    return-void

    .line 556
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 351
    :goto_0
    if-eqz v0, :cond_1

    .line 352
    iget v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 357
    :goto_1
    return v0

    .line 354
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 361
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v0, :cond_3

    .line 362
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 363
    array-length v5, v4

    move v3, v1

    .line 364
    :goto_0
    if-ge v3, v5, :cond_3

    .line 365
    aget-object v0, v4, v3

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 366
    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 367
    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 369
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const/4 v0, 0x1

    .line 374
    :goto_2
    return v0

    .line 365
    :cond_1
    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v2, v0

    goto :goto_1

    .line 364
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 374
    goto :goto_2
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    move-object v1, v0

    .line 335
    :goto_0
    if-eqz v1, :cond_2

    .line 336
    iget v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_1

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 338
    if-eqz v0, :cond_0

    .line 345
    :goto_1
    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 342
    :cond_1
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    .line 345
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 311
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 415
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 417
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 418
    add-int/lit8 v3, v0, 0x1

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->rehash()V

    .line 420
    :cond_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 421
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 422
    aget-object v2, v4, v5

    move-object v1, v2

    .line 424
    :goto_0
    if-eqz v1, :cond_2

    iget v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_1

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 425
    :cond_1
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    .line 428
    :cond_2
    if-eqz v1, :cond_4

    .line 429
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 430
    if-nez p4, :cond_3

    .line 431
    iput-object p3, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    .line 434
    :cond_4
    const/4 v0, 0x0

    .line 435
    :try_start_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 436
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v1, p1, p2, v2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v1, v4, v5

    .line 437
    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 441
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method readValueUnderLock(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 324
    :try_start_0
    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()V
    .locals 13

    .prologue
    .line 446
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 447
    array-length v7, v6

    .line 448
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v7, v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 465
    :cond_0
    shl-int/lit8 v0, v7, 0x1

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v8

    .line 466
    array-length v0, v8

    int-to-float v0, v0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 467
    array-length v0, v8

    add-int/lit8 v9, v0, -0x1

    .line 468
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_4

    .line 471
    aget-object v4, v6, v5

    .line 473
    if-eqz v4, :cond_1

    .line 474
    iget-object v2, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 475
    iget v0, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    and-int v1, v0, v9

    .line 478
    if-nez v2, :cond_2

    .line 479
    aput-object v4, v8, v1

    .line 468
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 486
    :goto_2
    if-eqz v2, :cond_3

    .line 488
    iget v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    and-int/2addr v0, v9

    .line 489
    if-eq v0, v1, :cond_5

    move-object v1, v2

    .line 487
    :goto_3
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v3, v1

    move v1, v0

    goto :goto_2

    .line 494
    :cond_3
    aput-object v3, v8, v1

    move-object v0, v4

    .line 497
    :goto_4
    if-eq v0, v3, :cond_1

    .line 498
    iget v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    and-int/2addr v1, v9

    .line 499
    aget-object v2, v8, v1

    .line 500
    new-instance v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v11, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v4, v10, v11, v2, v12}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v4, v8, v1

    .line 497
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_4

    .line 506
    :cond_4
    iput-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 513
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 515
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v0, -0x1

    .line 516
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 517
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 518
    aget-object v2, v6, v7

    move-object v4, v2

    .line 520
    :goto_0
    if-eqz v4, :cond_1

    iget v0, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_0

    iget-object v0, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    iget-object v0, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v4, v0

    goto :goto_0

    .line 523
    :cond_1
    const/4 v0, 0x0

    .line 524
    if-eqz v4, :cond_4

    .line 525
    iget-object v1, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 526
    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 531
    :cond_2
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 532
    iget-object v0, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    .line 533
    :goto_1
    if-eq v0, v4, :cond_3

    .line 534
    new-instance v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v8, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v9, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v3, v8, v9, v2, v10}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    .line 533
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v2, v3

    goto :goto_1

    .line 536
    :cond_3
    aput-object v2, v6, v7

    .line 537
    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 542
    :cond_4
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 398
    :try_start_0
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    move-object v1, v0

    .line 399
    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_0

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, 0x0

    .line 403
    if-eqz v1, :cond_2

    .line 404
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 405
    iput-object p3, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_2
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 378
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 380
    :try_start_0
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    move-object v1, v0

    .line 381
    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_0

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, 0x0

    .line 385
    if-eqz v1, :cond_2

    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    const/4 v0, 0x1

    .line 387
    iput-object p4, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_2
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method setTable([Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .locals 2

    .prologue
    .line 302
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 303
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 304
    return-void
.end method
