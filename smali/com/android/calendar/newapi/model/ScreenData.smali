.class public abstract Lcom/android/calendar/newapi/model/ScreenData;
.super Ljava/lang/Object;
.source "ScreenData.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getColor(Landroid/content/res/Resources;)I
.end method

.method public abstract isEditable()Z
.end method

.method public abstract showSimplifiedScreen()Z
.end method
