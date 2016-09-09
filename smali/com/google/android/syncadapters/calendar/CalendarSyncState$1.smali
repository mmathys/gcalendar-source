.class final Lcom/google/android/syncadapters/calendar/CalendarSyncState$1;
.super Ljava/lang/Object;
.source "CalendarSyncState.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradeEvents(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    if-eqz p2, :cond_0

    const-string v0, "http://www.google.com/calendar/feeds/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object p2

    .line 200
    :cond_1
    const-string v0, "/events/"

    const-string v1, "http://www.google.com/calendar/feeds/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 201
    if-ltz v0, :cond_0

    .line 204
    const-string v1, "/events/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
