// Generated by gencpp from file signalprocess/EMGdata.msg
// DO NOT EDIT!


#ifndef SIGNALPROCESS_MESSAGE_EMGDATA_H
#define SIGNALPROCESS_MESSAGE_EMGDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace signalprocess
{
template <class ContainerAllocator>
struct EMGdata_
{
  typedef EMGdata_<ContainerAllocator> Type;

  EMGdata_()
    : current_time()
    , data()  {
    }
  EMGdata_(const ContainerAllocator& _alloc)
    : current_time(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _current_time_type;
  _current_time_type current_time;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::signalprocess::EMGdata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::signalprocess::EMGdata_<ContainerAllocator> const> ConstPtr;

}; // struct EMGdata_

typedef ::signalprocess::EMGdata_<std::allocator<void> > EMGdata;

typedef boost::shared_ptr< ::signalprocess::EMGdata > EMGdataPtr;
typedef boost::shared_ptr< ::signalprocess::EMGdata const> EMGdataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::signalprocess::EMGdata_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::signalprocess::EMGdata_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::signalprocess::EMGdata_<ContainerAllocator1> & lhs, const ::signalprocess::EMGdata_<ContainerAllocator2> & rhs)
{
  return lhs.current_time == rhs.current_time &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::signalprocess::EMGdata_<ContainerAllocator1> & lhs, const ::signalprocess::EMGdata_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace signalprocess

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::signalprocess::EMGdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::signalprocess::EMGdata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::signalprocess::EMGdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::signalprocess::EMGdata_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::signalprocess::EMGdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::signalprocess::EMGdata_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::signalprocess::EMGdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "05db57eabda2aa74915fdeb4724bd1eb";
  }

  static const char* value(const ::signalprocess::EMGdata_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x05db57eabda2aa74ULL;
  static const uint64_t static_value2 = 0x915fdeb4724bd1ebULL;
};

template<class ContainerAllocator>
struct DataType< ::signalprocess::EMGdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "signalprocess/EMGdata";
  }

  static const char* value(const ::signalprocess::EMGdata_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::signalprocess::EMGdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string current_time\n"
"float32[] data\n"
;
  }

  static const char* value(const ::signalprocess::EMGdata_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::signalprocess::EMGdata_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_time);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EMGdata_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::signalprocess::EMGdata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::signalprocess::EMGdata_<ContainerAllocator>& v)
  {
    s << indent << "current_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.current_time);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIGNALPROCESS_MESSAGE_EMGDATA_H
