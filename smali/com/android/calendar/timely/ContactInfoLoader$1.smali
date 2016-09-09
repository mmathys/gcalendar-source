.class Lcom/android/calendar/timely/ContactInfoLoader$1;
.super Ljava/lang/Object;
.source "ContactInfoLoader.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/ContactInfoLoader;->loadSingleByFocusId(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/android/calendar/timely/ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/ContactInfoLoader;

.field final synthetic val$source:Lcom/android/calendar/timely/ContactInfo;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/ContactInfoLoader;Lcom/android/calendar/timely/ContactInfo;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfoLoader$1;->this$0:Lcom/android/calendar/timely/ContactInfoLoader;

    iput-object p2, p0, Lcom/android/calendar/timely/ContactInfoLoader$1;->val$source:Lcom/android/calendar/timely/ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/database/Cursor;)Lcom/android/calendar/timely/ContactInfo;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 108
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 109
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfoLoader$1;->this$0:Lcom/android/calendar/timely/ContactInfoLoader;

    # getter for: Lcom/android/calendar/timely/ContactInfoLoader;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/calendar/timely/ContactInfoLoader;->access$100(Lcom/android/calendar/timely/ContactInfoLoader;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    # getter for: Lcom/android/calendar/timely/ContactInfoLoader;->CONTACTS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/ContactInfoLoader;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfoLoader$1;->this$0:Lcom/android/calendar/timely/ContactInfoLoader;

    new-instance v2, Lcom/android/calendar/timely/ContactInfoLoader$1$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/ContactInfoLoader$1$1;-><init>(Lcom/android/calendar/timely/ContactInfoLoader$1;)V

    iget-object v3, p0, Lcom/android/calendar/timely/ContactInfoLoader$1;->val$source:Lcom/android/calendar/timely/ContactInfo;

    const-string v4, "Failed to load contact for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    move-object v1, v6

    # invokes: Lcom/android/calendar/timely/ContactInfoLoader;->processSingleCursorItem(Landroid/database/Cursor;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/timely/ContactInfoLoader;->access$200(Lcom/android/calendar/timely/ContactInfoLoader;Landroid/database/Cursor;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ContactInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v6, :cond_0

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/ContactInfoLoader$1;->apply(Landroid/database/Cursor;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    return-object v0
.end method
