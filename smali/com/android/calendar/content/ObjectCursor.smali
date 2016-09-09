.class public Lcom/android/calendar/content/ObjectCursor;
.super Landroid/database/CursorWrapper;
.source "ObjectCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/CursorWrapper;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mFactory:Lcom/android/calendar/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/content/CursorCreator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/calendar/content/CursorCreator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/calendar/content/CursorCreator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    .line 46
    :goto_0
    iput-object p2, p0, Lcom/android/calendar/content/ObjectCursor;->mFactory:Lcom/android/calendar/content/CursorCreator;

    .line 47
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 93
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 94
    return-void
.end method

.method final fillCache()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursor;->getModel()Ljava/lang/Object;

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public final getModel()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 63
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursor;->mFactory:Lcom/android/calendar/content/CursorCreator;

    invoke-interface {v0, v1}, Lcom/android/calendar/content/CursorCreator;->createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/calendar/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
