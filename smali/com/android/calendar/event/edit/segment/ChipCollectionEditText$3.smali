.class Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;
.super Ljava/lang/Object;
.source "ChipCollectionEditText.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mRemoved:Z

.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

.field final synthetic val$allChips:[Lcom/android/calendar/event/edit/segment/BaseChipSpan;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;[Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->val$allChips:[Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    .line 280
    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mRemoved:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->val$allChips:[Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/android/calendar/event/edit/segment/BaseChipSpan;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 288
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->val$allChips:[Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 289
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    .line 290
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->val$allChips:[Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    iget v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    aget-object v0, v0, v1

    .line 293
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mRemoved:Z

    .line 294
    iget v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    .line 295
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->next()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 300
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mRemoved:Z

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->val$allChips:[Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    iget v2, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;->mIndex:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->removeChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    .line 305
    return-void
.end method
