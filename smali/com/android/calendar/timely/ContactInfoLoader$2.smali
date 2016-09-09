.class Lcom/android/calendar/timely/ContactInfoLoader$2;
.super Ljava/lang/Object;
.source "ContactInfoLoader.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/ContactInfoLoader;->loadSingleByEmail(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;
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
    .line 172
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfoLoader$2;->this$0:Lcom/android/calendar/timely/ContactInfoLoader;

    iput-object p2, p0, Lcom/android/calendar/timely/ContactInfoLoader$2;->val$source:Lcom/android/calendar/timely/ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/database/Cursor;)Lcom/android/calendar/timely/ContactInfo;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfoLoader$2;->val$source:Lcom/android/calendar/timely/ContactInfo;

    invoke-static {v2}, Lcom/android/calendar/timely/ContactInfo;->newBuilder(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v2

    .line 177
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/ContactInfo$Builder;->setName(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v2

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/ContactInfo$Builder;->setLookupKey(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v2

    const/4 v3, 0x3

    .line 179
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/ContactInfo$Builder;->setContactId(Ljava/lang/Long;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 180
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->setHasPhoto(Ljava/lang/Boolean;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    .line 176
    return-object v0

    :cond_0
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/ContactInfoLoader$2;->apply(Landroid/database/Cursor;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    return-object v0
.end method
