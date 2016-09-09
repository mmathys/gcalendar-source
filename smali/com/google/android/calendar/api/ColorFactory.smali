.class public Lcom/google/android/calendar/api/ColorFactory;
.super Ljava/lang/Object;
.source "ColorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDescriptor(ILandroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 56
    if-ne p1, v1, :cond_2

    .line 57
    invoke-static {p2, p3}, Lcom/google/android/calendar/api/ColorDescriptor;->createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    .line 56
    :goto_1
    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p2, p3}, Lcom/google/android/calendar/api/ColorDescriptor;->createCalendarColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    goto :goto_1
.end method
