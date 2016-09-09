.class public Lcom/android/calendar/content/ObjectCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ObjectCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/calendar/content/ObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCursor:Lcom/android/calendar/content/ObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDebugDelayMs:I

.field private final mFactory:Lcom/android/calendar/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/content/CursorCreator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field final mProjection:[Ljava/lang/String;

.field final mSelection:Ljava/lang/String;

.field final mSelectionArgs:[Ljava/lang/String;

.field final mSortOrder:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/calendar/content/ObjectCursorLoader;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/content/ObjectCursorLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/calendar/content/CursorCreator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/calendar/content/CursorCreator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSelection:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mDebugDelayMs:I

    .line 61
    if-nez p4, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/calendar/content/ObjectCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 67
    iput-object p3, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mProjection:[Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mFactory:Lcom/android/calendar/content/CursorCreator;

    .line 69
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/calendar/content/ObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/android/calendar/content/ObjectCursor;->close()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    .line 118
    iput-object p1, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    .line 120
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 124
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/android/calendar/content/ObjectCursor;

    invoke-virtual {p0, p1}, Lcom/android/calendar/content/ObjectCursorLoader;->deliverResult(Lcom/android/calendar/content/ObjectCursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method protected getObjectCursor(Landroid/database/Cursor;)Lcom/android/calendar/content/ObjectCursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/android/calendar/content/ObjectCursor;

    iget-object v1, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mFactory:Lcom/android/calendar/content/CursorCreator;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/content/ObjectCursor;-><init>(Landroid/database/Cursor;Lcom/android/calendar/content/CursorCreator;)V

    return-object v0
.end method

.method public loadInBackground()Lcom/android/calendar/content/ObjectCursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    move-object v0, v6

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/android/calendar/content/ObjectCursorLoader;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception in ObjectCursorLoader"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v6

    .line 80
    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 88
    iget-object v1, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/calendar/content/ObjectCursorLoader;->getObjectCursor(Landroid/database/Cursor;)Lcom/android/calendar/content/ObjectCursor;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/android/calendar/content/ObjectCursor;->fillCache()V

    .line 95
    :try_start_1
    iget v1, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mDebugDelayMs:I

    if-lez v1, :cond_0

    .line 96
    iget v1, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mDebugDelayMs:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->loadInBackground()Lcom/android/calendar/content/ObjectCursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lcom/android/calendar/content/ObjectCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/calendar/content/ObjectCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/android/calendar/content/ObjectCursor;->close()V

    .line 160
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/android/calendar/content/ObjectCursor;

    invoke-virtual {p0, p1}, Lcom/android/calendar/content/ObjectCursorLoader;->onCanceled(Lcom/android/calendar/content/ObjectCursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 167
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->onStopLoading()V

    .line 169
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    invoke-virtual {v0}, Lcom/android/calendar/content/ObjectCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    invoke-virtual {v0}, Lcom/android/calendar/content/ObjectCursor;->close()V

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    .line 173
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    invoke-virtual {p0, v0}, Lcom/android/calendar/content/ObjectCursorLoader;->deliverResult(Lcom/android/calendar/content/ObjectCursor;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mCursor:Lcom/android/calendar/content/ObjectCursor;

    if-nez v0, :cond_2

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->forceLoad()V

    .line 144
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/content/ObjectCursorLoader;->cancelLoad()Z

    .line 153
    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/content/ObjectCursorLoader;->mUri:Landroid/net/Uri;

    .line 209
    return-void
.end method
