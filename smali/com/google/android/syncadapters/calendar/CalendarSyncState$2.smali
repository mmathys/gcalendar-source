.class Lcom/google/android/syncadapters/calendar/CalendarSyncState$2;
.super Ljava/lang/Object;
.source "CalendarSyncState.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradeFromIcsToJb(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncState;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/calendar/CalendarSyncState;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState$2;->this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/Utils;->extractEventId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
