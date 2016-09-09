.class Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;
.super Ljava/lang/Object;
.source "DatePickerCompat.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/date/DatePickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultDateSetListenerWrapper"
.end annotation


# instance fields
.field private mWrappee:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;->mWrappee:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    .line 192
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;->mWrappee:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;->onDateSet(III)V

    .line 197
    return-void
.end method
