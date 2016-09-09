.class public Lcom/android/calendar/editor/AspectKey;
.super Ljava/lang/Object;
.source "AspectKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AspectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAspectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TAspectType;>;"
        }
    .end annotation
.end field

.field private final mAspectId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TAspectType;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/calendar/editor/AspectKey;->mAspectId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/calendar/editor/AspectKey;->mAspectClass:Ljava/lang/Class;

    .line 34
    return-void
.end method

.method public static from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/android/calendar/editor/AspectKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/editor/AspectKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public castAspect(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TAspectType;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/editor/AspectKey;->mAspectClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/editor/AspectKey;

    if-nez v2, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    check-cast p1, Lcom/android/calendar/editor/AspectKey;

    .line 80
    iget-object v2, p0, Lcom/android/calendar/editor/AspectKey;->mAspectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/editor/AspectKey;->mAspectId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/editor/AspectKey;->mAspectClass:Ljava/lang/Class;

    iget-object v3, p1, Lcom/android/calendar/editor/AspectKey;->mAspectClass:Ljava/lang/Class;

    .line 81
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAspectClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TAspectType;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calendar/editor/AspectKey;->mAspectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getAspectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/editor/AspectKey;->mAspectId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/editor/AspectKey;->mAspectId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/editor/AspectKey;->mAspectClass:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
